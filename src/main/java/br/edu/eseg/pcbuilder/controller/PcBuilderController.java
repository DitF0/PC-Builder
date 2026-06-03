package br.edu.eseg.pcbuilder.controller;

import br.edu.eseg.pcbuilder.model.Componente;
import br.edu.eseg.pcbuilder.model.Configuracao;
import br.edu.eseg.pcbuilder.model.ItemConfiguracao;
import br.edu.eseg.pcbuilder.repository.CategoriaRepository;
import br.edu.eseg.pcbuilder.repository.ComponenteRepository;
import br.edu.eseg.pcbuilder.service.ConfiguracaoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.security.crypto.password.PasswordEncoder;
import br.edu.eseg.pcbuilder.repository.UsuarioRepository;
import br.edu.eseg.pcbuilder.model.Usuario;//bora ve
import br.edu.eseg.pcbuilder.model.PerfilUso;
import br.edu.eseg.pcbuilder.model.RecomendacaoDTO;
import br.edu.eseg.pcbuilder.service.RecomendacaoService;
import br.edu.eseg.pcbuilder.model.AvaliacaoComponente;
import br.edu.eseg.pcbuilder.model.Wishlist;
import br.edu.eseg.pcbuilder.service.ComunidadeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.util.Optional;
import br.edu.eseg.pcbuilder.repository.FabricanteRepository;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/")
public class PcBuilderController {

    private final ComponenteRepository componenteRepository;
    private final CategoriaRepository categoriaRepository;
    private final ConfiguracaoService configuracaoService;
    private final UsuarioRepository usuarioRepository;
    private final PasswordEncoder passwordEncoder;
    private final FabricanteRepository fabricanteRepository;
    private final RecomendacaoService recomendacaoService;
    private final ComunidadeService comunidadeService;

    public PcBuilderController(ComponenteRepository componenteRepository,
                               CategoriaRepository categoriaRepository,
                               ConfiguracaoService configuracaoService,
                               UsuarioRepository usuarioRepository,
                               PasswordEncoder passwordEncoder,
                               FabricanteRepository fabricanteRepository,
                               RecomendacaoService recomendacaoService,
                               ComunidadeService comunidadeService) {
        this.componenteRepository = componenteRepository;
        this.categoriaRepository = categoriaRepository;
        this.configuracaoService = configuracaoService;
        this.usuarioRepository = usuarioRepository;
        this.passwordEncoder = passwordEncoder;
        this.fabricanteRepository = fabricanteRepository;
        this.recomendacaoService = recomendacaoService;
        this.comunidadeService = comunidadeService;
    }

    @GetMapping
    public String exibirDashboard(Model model) {
        List<Configuracao> builds = configuracaoService.buscarBuildsDoUsuario();

        double totalInvestido = builds.stream()
                .mapToDouble(Configuracao::getValorTotal)
                .sum();

        model.addAttribute("categorias", categoriaRepository.findAll());
        model.addAttribute("componentes", componenteRepository.findAllOrdenadosPorFabricanteEPreco());
        model.addAttribute("buildsSalvas", builds);
        String totalFormatado = String.format("R$ %,.2f", totalInvestido)
                .replace(",", "X").replace(".", ",").replace("X", ".");
        model.addAttribute("totalInvestido", totalFormatado);

        if (model.containsAttribute("componentesAnteriores")) {
            String anterior = (String) model.getAttribute("componentesAnteriores");
            if (anterior != null && !anterior.isBlank()) {
                List<Long> idsAnteriores = java.util.Arrays.stream(anterior.split(","))
                        .map(Long::parseLong)
                        .collect(Collectors.toList());
                model.addAttribute("idsAnteriores", idsAnteriores);
            }
        }
        return "index";
    }

    @GetMapping("/registro")
    public String exibirRegistro() {
        return "registro";
    }

    @PostMapping("/registro")
    public String registrar(@RequestParam String nome,
                            @RequestParam String email,
                            @RequestParam String senha,
                            @RequestParam String confirmarSenha,
                            RedirectAttributes redirectAttributes) {

        if (!senha.equals(confirmarSenha)) {
            redirectAttributes.addFlashAttribute("erro", "As senhas não coincidem.");
            return "redirect:/registro";
        }

        if (senha.length() < 6) {
            redirectAttributes.addFlashAttribute("erro", "A senha deve ter pelo menos 6 caracteres.");
            return "redirect:/registro";
        }

        if (usuarioRepository.findByEmail(email).isPresent()) {
            redirectAttributes.addFlashAttribute("erro", "Este e-mail já está cadastrado.");
            return "redirect:/registro";
        }

        Usuario novoUsuario = new Usuario();
        novoUsuario.setNome(nome);
        novoUsuario.setEmail(email);
        novoUsuario.setSenha(passwordEncoder.encode(senha));
        novoUsuario.setRole("ROLE_USER");
        usuarioRepository.save(novoUsuario);

        redirectAttributes.addFlashAttribute("sucesso", "Conta criada com sucesso! Faça login.");
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/salvar")
    public String salvarBuild(@RequestParam("nomeBuild") String nomeBuild,
                              @RequestParam(value = "componenteId", required = false) List<Long> componenteIds,
                              @RequestParam(value = "quantidade", required = false) List<Integer> quantidades,
                              RedirectAttributes redirectAttributes) {
        try {
            Configuracao build = new Configuracao();
            build.setNomeBuild(nomeBuild);

            if (componenteIds != null && quantidades != null) {
                for (int i = 0; i < componenteIds.size(); i++) {
                    Long componenteId = componenteIds.get(i);
                    Integer quantidade = quantidades.get(i);

                    if (componenteId != null && componenteId > 0 && quantidade != null && quantidade > 0) {
                        Componente componente = componenteRepository.findById(componenteId)
                                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));
                        ItemConfiguracao item = new ItemConfiguracao();
                        item.setComponente(componente);
                        item.setQuantidade(quantidade);
                        build.getItens().add(item);
                    }
                }
            }

            configuracaoService.salvarBuild(build);
            redirectAttributes.addFlashAttribute("sucesso", "Build montada e validada com sucesso!");

        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
            redirectAttributes.addFlashAttribute("nomeBuildAnterior", nomeBuild);
            if (componenteIds != null) {
                redirectAttributes.addFlashAttribute("componentesAnteriores",
                        componenteIds.stream().map(String::valueOf).collect(java.util.stream.Collectors.joining(",")));
            }
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro inesperado ao salvar. Tente novamente.");
        }

        return "redirect:/";
    }

    @GetMapping("/editar/{id}")
    public String exibirFormularioEdicao(@PathVariable Long id, Model model,
                                         RedirectAttributes redirectAttributes) {
        Optional<Configuracao> configuracaoOptional = configuracaoService.buscarPorId(id);

        if (configuracaoOptional.isPresent()) {
            Configuracao configuracao = configuracaoOptional.get();

            // Mapas simples para o template usar sem lambdas
            Map<Long, Long> componentesPorCategoria = new java.util.HashMap<>();
            Map<Long, Integer> quantidadesPorCategoria = new java.util.HashMap<>();
            for (ItemConfiguracao item : configuracao.getItens()) {
                Long catId = item.getComponente().getCategoria().getId();
                componentesPorCategoria.put(catId, item.getComponente().getId());
                quantidadesPorCategoria.put(catId, item.getQuantidade());
            }

            model.addAttribute("configuracaoParaEditar", configuracao);
            model.addAttribute("componentesPorCategoria", componentesPorCategoria);
            model.addAttribute("quantidadesPorCategoria", quantidadesPorCategoria);
            model.addAttribute("categorias", categoriaRepository.findAll());
            model.addAttribute("componentes", componenteRepository.findAll());
            return "editar-build";
        }

        redirectAttributes.addFlashAttribute("erro", "Build não encontrada.");
        return "redirect:/";
    }

    @PostMapping("/atualizar/{id}")
    public String atualizarBuild(@PathVariable Long id,
                                 @RequestParam("nomeBuild") String nomeBuild,
                                 @RequestParam(value = "componenteId", required = false) List<Long> componenteIds,
                                 @RequestParam(value = "quantidade", required = false) List<Integer> quantidades,
                                 RedirectAttributes redirectAttributes) {
        try {
            Configuracao build = configuracaoService.buscarPorId(id)
                    .orElseThrow(() -> new IllegalArgumentException("Build não encontrada para atualização."));

            build.setNomeBuild(nomeBuild);
            build.getItens().clear();

            if (componenteIds != null && quantidades != null) {
                for (int i = 0; i < componenteIds.size(); i++) {
                    Long componenteId = componenteIds.get(i);
                    Integer quantidade = quantidades.get(i);

                    if (componenteId != null && componenteId > 0 && quantidade != null && quantidade > 0) {
                        Componente componente = componenteRepository.findById(componenteId)
                                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));
                        ItemConfiguracao item = new ItemConfiguracao();
                        item.setComponente(componente);
                        item.setQuantidade(quantidade);
                        build.getItens().add(item);
                    }
                }
            }

            configuracaoService.salvarBuild(build);
            redirectAttributes.addFlashAttribute("sucesso", "Build atualizada com sucesso!");

        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro inesperado ao atualizar. Tente novamente.");
        }

        return "redirect:/";
    }

    @PostMapping("/excluir/{id}")
    public String excluirBuild(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            configuracaoService.excluirBuild(id);
            redirectAttributes.addFlashAttribute("sucesso", "Build excluída com sucesso!");
        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro", "Erro inesperado ao excluir.");
        }

        return "redirect:/";
    }
    // -------------------------------------------------------
// CATALOGO DE COMPONENTES
// -------------------------------------------------------

    @GetMapping("/componentes")
    public String catalogo(
            @RequestParam(required = false) String busca,
            @RequestParam(required = false) String categoria,
            @RequestParam(required = false) String fabricante,
            @RequestParam(required = false) Double precoMax,
            @RequestParam(required = false) String ordenar,
            Model model) {

        List<Componente> lista = componenteRepository.findAll();

        // Filtro por texto
        if (busca != null && !busca.isBlank()) {
            String termo = busca.toLowerCase();
            lista = lista.stream()
                    .filter(c -> c.getNome().toLowerCase().contains(termo)
                            || (c.getEspecificacao() != null && c.getEspecificacao().toLowerCase().contains(termo))
                            || c.getFabricante().getNome().toLowerCase().contains(termo))
                    .collect(Collectors.toList());
        }

        // Filtro por categoria
        if (categoria != null && !categoria.isBlank()) {
            lista = lista.stream()
                    .filter(c -> c.getCategoria().getNome().equalsIgnoreCase(categoria))
                    .collect(Collectors.toList());
        }

        // Filtro por fabricante
        if (fabricante != null && !fabricante.isBlank()) {
            lista = lista.stream()
                    .filter(c -> c.getFabricante().getNome().equalsIgnoreCase(fabricante))
                    .collect(Collectors.toList());
        }

        // Filtro por preco maximo
        if (precoMax != null && precoMax > 0) {
            lista = lista.stream()
                    .filter(c -> c.getPreco() <= precoMax)
                    .collect(Collectors.toList());
        }

        // Ordenacao
        if (ordenar != null) {
            switch (ordenar) {
                case "preco_asc"  -> lista.sort(Comparator.comparingDouble(Componente::getPreco));
                case "preco_desc" -> lista.sort(Comparator.comparingDouble(Componente::getPreco).reversed());
                case "nome_asc"   -> lista.sort(Comparator.comparing(Componente::getNome));
                case "tdp_desc"   -> lista.sort(Comparator.comparingInt(Componente::getTdpWatts).reversed());
            }
        }

        model.addAttribute("componentes", lista);
        model.addAttribute("categorias", categoriaRepository.findAll());
        model.addAttribute("fabricantes", fabricanteRepository.findAll());
        model.addAttribute("totalResultados", lista.size());
        model.addAttribute("buscaAtual", busca);
        model.addAttribute("categoriaAtual", categoria);
        model.addAttribute("fabricanteAtual", fabricante);
        model.addAttribute("precoMaxAtual", precoMax);
        model.addAttribute("ordenarAtual", ordenar);
        return "catalogo";
    }

    @GetMapping("/componentes/{id}")
    public String detalheComponente(@PathVariable Long id, Model model) {
        Componente comp = componenteRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));

        List<Componente> similares = componenteRepository
                .findByCategoriaNome(comp.getCategoria().getNome())
                .stream()
                .filter(c -> !c.getId().equals(id))
                .sorted(Comparator.comparingDouble(c ->
                        Math.abs(c.getPreco() - comp.getPreco())))
                .limit(4)
                .collect(Collectors.toList());

        Map<String, Componente> complementares = gerarComplementares(comp);

        // Dados de avaliacao
        List<AvaliacaoComponente> avaliacoes = comunidadeService.buscarAvaliacoes(id);
        Double mediaNotas = comunidadeService.buscarMediaNotas(id);
        Long totalAvaliacoes = comunidadeService.buscarTotalAvaliacoes(id);
        Optional<AvaliacaoComponente> minhaAvaliacao = comunidadeService.buscarAvaliacaoDoUsuario(id);
        boolean naWishlist = comunidadeService.componenteNaWishlist(id);

        model.addAttribute("componente", comp);
        model.addAttribute("similares", similares);
        model.addAttribute("complementares", complementares);
        model.addAttribute("avaliacoes", avaliacoes);
        model.addAttribute("mediaNotas", mediaNotas);
        model.addAttribute("totalAvaliacoes", totalAvaliacoes);
        model.addAttribute("minhaAvaliacao", minhaAvaliacao.orElse(null));
        model.addAttribute("naWishlist", naWishlist);
        return "componente-detalhe";
    }

    private Map<String, Componente> gerarComplementares(Componente comp) {
        Map<String, Componente> map = new LinkedHashMap<>();
        String cat = comp.getCategoria().getNome();

        if (cat.equalsIgnoreCase("Processador")) {
            // Sugere placa-mae com mesmo socket
            componenteRepository.findByCategoriaNome("Placa-Mae").stream()
                    .filter(c -> comp.getSocket() != null &&
                            comp.getSocket().equals(c.getSocket()))
                    .findFirst()
                    .ifPresent(c -> map.put("Placa-Mae compativel", c));

            // Sugere cooler
            componenteRepository.findByCategoriaNome("Cooler").stream()
                    .findFirst()
                    .ifPresent(c -> map.put("Cooler sugerido", c));

            // Sugere RAM com DDR compativel
            componenteRepository.findByCategoriaNome("Memoria RAM").stream()
                    .filter(c -> comp.getDdrVersion() != null &&
                            c.getDdrVersion() != null &&
                            comp.getDdrVersion().contains(c.getDdrVersion()))
                    .findFirst()
                    .ifPresent(c -> map.put("Memoria RAM compativel", c));
        }

        if (cat.equalsIgnoreCase("Placa de Video")) {
            // Sugere fonte com capacidade suficiente (consumo GPU x 2 para margem)
            componenteRepository.findByCategoriaNome("Fonte").stream()
                    .filter(c -> c.getTdpWatts() >= comp.getTdpWatts() * 2)
                    .min(Comparator.comparingInt(Componente::getTdpWatts))
                    .ifPresent(c -> map.put("Fonte recomendada", c));

            // Sugere gabinete
            componenteRepository.findByCategoriaNome("Gabinete").stream()
                    .findFirst()
                    .ifPresent(c -> map.put("Gabinete sugerido", c));
        }

        if (cat.equalsIgnoreCase("Placa-Mae")) {
            // Sugere CPU compativel
            componenteRepository.findByCategoriaNome("Processador").stream()
                    .filter(c -> comp.getSocket() != null &&
                            comp.getSocket().equals(c.getSocket()))
                    .findFirst()
                    .ifPresent(c -> map.put("Processador compativel", c));

            // Sugere RAM com DDR compativel
            componenteRepository.findByCategoriaNome("Memoria RAM").stream()
                    .filter(c -> c.getDdrVersion() != null &&
                            comp.getDdrVersion() != null &&
                            comp.getDdrVersion().contains(c.getDdrVersion()))
                    .findFirst()
                    .ifPresent(c -> map.put("Memoria RAM compativel", c));
        }

        if (cat.equalsIgnoreCase("Memoria RAM")) {
            // Sugere placa-mae compativel com DDR da RAM
            componenteRepository.findByCategoriaNome("Placa-Mae").stream()
                    .filter(c -> c.getDdrVersion() != null &&
                            comp.getDdrVersion() != null &&
                            c.getDdrVersion().contains(comp.getDdrVersion()))
                    .findFirst()
                    .ifPresent(c -> map.put("Placa-Mae compativel", c));
        }

        if (cat.equalsIgnoreCase("Armazenamento")) {
            // Sugere placa-mae com M.2
            componenteRepository.findByCategoriaNome("Placa-Mae").stream()
                    .findFirst()
                    .ifPresent(c -> map.put("Placa-Mae sugerida", c));
        }

        if (cat.equalsIgnoreCase("Fonte")) {
            // Sugere gabinete
            componenteRepository.findByCategoriaNome("Gabinete").stream()
                    .findFirst()
                    .ifPresent(c -> map.put("Gabinete sugerido", c));
        }

        return map;
    }
    // -------------------------------------------------------
// RECOMENDADOR POR PERFIL DE USO
// -------------------------------------------------------

    @GetMapping("/recomendar")
    public String exibirRecomendador(Model model) {
        model.addAttribute("perfis", PerfilUso.values());
        return "recomendacao";
    }

    @GetMapping("/recomendar/resultado")
    public String resultado(
            @RequestParam(required = false) String perfil,
            @RequestParam(required = false) Integer orcamento,
            Model model) {

        if (perfil == null || perfil.isBlank()) {
            return "redirect:/recomendar";
        }

        PerfilUso perfilUso;
        try {
            perfilUso = PerfilUso.valueOf(perfil.trim().toUpperCase());
        } catch (IllegalArgumentException e) {
            return "redirect:/recomendar";
        }

        Double orcamentoDouble = (orcamento != null && orcamento > 0)
                ? orcamento.doubleValue() : null;

        RecomendacaoDTO recomendacao = recomendacaoService.recomendar(perfilUso, orcamentoDouble);
        model.addAttribute("recomendacao", recomendacao);
        model.addAttribute("perfis", PerfilUso.values());
        model.addAttribute("orcamento", orcamentoDouble);
        return "recomendacao";
    }

    @PostMapping("/recomendar/build-automatica")
    public String buildAutomatica(
            @RequestParam PerfilUso perfil,
            @RequestParam(required = false) Double orcamento,
            RedirectAttributes redirectAttributes) {

        try {
            RecomendacaoDTO rec = recomendacaoService.recomendar(perfil, orcamento);
            Map<String, List<Componente>> recomendados = rec.getComponentesRecomendados();

            // 1. CPU primeiro
            Componente cpu = recomendados.getOrDefault("Processador", List.of())
                    .stream().findFirst().orElse(null);

            // 2. Placa-Mãe compatível com socket da CPU
            String socketCpu = cpu != null ? cpu.getSocket() : null;
            Componente placa = recomendados.getOrDefault("Placa-Mae", List.of()).stream()
                    .filter(p -> socketCpu == null || socketCpu.equals(p.getSocket()))
                    .findFirst().orElse(null);

            // 3. RAM compatível com DDR da Placa-Mãe
            String ddrPlaca = placa != null ? placa.getDdrVersion() : null;
            Componente ram = recomendados.getOrDefault("Memoria RAM", List.of()).stream()
                    .filter(r -> ddrPlaca == null || ddrPlaca.equals(r.getDdrVersion()))
                    .findFirst().orElse(null);

            // 4. Demais componentes (sem Fonte e Gabinete — selecionados por último)
            Map<String, Componente> selecionados = new java.util.LinkedHashMap<>();
            if (cpu != null)   selecionados.put("Processador", cpu);
            if (placa != null) selecionados.put("Placa-Mae", placa);
            if (ram != null)   selecionados.put("Memoria RAM", ram);

            for (Map.Entry<String, List<Componente>> entry : recomendados.entrySet()) {
                String cat = entry.getKey();
                if (selecionados.containsKey(cat)) continue;
                if (cat.equalsIgnoreCase("Fonte")) continue;
                if (cat.equalsIgnoreCase("Gabinete")) continue;
                if (!entry.getValue().isEmpty()) {
                    selecionados.put(cat, entry.getValue().get(0));
                }
            }

            // 5. Calcula consumo e seleciona fonte adequada
            int consumoTotal = selecionados.values().stream()
                    .mapToInt(Componente::getTdpWatts).sum();
            int wattageMinimo = ((int) Math.ceil(consumoTotal / 0.80 / 50.0)) * 50;
            final int wattFinal = wattageMinimo;

            Componente fonte = componenteRepository.findAll().stream()
                    .filter(c -> c.getCategoria().getNome().equalsIgnoreCase("Fonte"))
                    .filter(f -> f.getTdpWatts() >= wattFinal)
                    .min(Comparator.comparingInt(Componente::getTdpWatts))
                    .orElseGet(() ->
                            componenteRepository.findAll().stream()
                                    .filter(c -> c.getCategoria().getNome().equalsIgnoreCase("Fonte"))
                                    .max(Comparator.comparingInt(Componente::getTdpWatts))
                                    .orElse(null)
                    );
            if (fonte != null) selecionados.put("Fonte", fonte);

            // 6. Gabinete proporcional ao orçamento
            // Pega o top pick do recomendador (já filtrado por orçamento)
            Componente gabinete = recomendados.getOrDefault("Gabinete", List.of())
                    .stream().findFirst().orElse(null);
            if (gabinete != null) selecionados.put("Gabinete", gabinete);

            // 7. Monta e salva a build
            Configuracao build = new Configuracao();
            build.setNomeBuild("Build " + perfil.getLabel() + " - Automática");
            for (Componente c : selecionados.values()) {
                ItemConfiguracao item = new ItemConfiguracao();
                item.setComponente(c);
                item.setQuantidade(1);
                build.getItens().add(item);
            }

            configuracaoService.salvarBuild(build);

            // Avisos importantes sobre a build
            String avisos = "⚠️ Verifique se o gabinete acomoda sua placa de vídeo "
                    + "(compare o comprimento máximo suportado com o da sua GPU). "
                    + "Os preços são estimativas de mercado e podem variar.";
            redirectAttributes.addFlashAttribute("aviso", avisos);
            redirectAttributes.addFlashAttribute("sucesso",
                    "Build automática " + perfil.getLabel() + " criada! "
                            + "Consumo: " + consumoTotal + "W · Fonte: "
                            + (fonte != null ? fonte.getTdpWatts() + "W" : "não encontrada")
                            + (gabinete != null ? " · Gabinete: " + gabinete.getNome() : ""));

        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro",
                    "Erro ao gerar build automática: " + e.getMessage());
        }
        return "redirect:/";
    }


    @PostMapping("/recomendar/salvar-selecionados")
    public String salvarSelecionados(
            @RequestParam("nomeBuild") String nomeBuild,
            @RequestParam(value = "componenteId", required = false) List<Long> componenteIds,
            @RequestParam(value = "quantidade", required = false) List<Integer> quantidades,
            RedirectAttributes redirectAttributes) {

        try {
            Configuracao build = new Configuracao();
            build.setNomeBuild(nomeBuild);

            if (componenteIds != null && quantidades != null) {
                for (int i = 0; i < componenteIds.size(); i++) {
                    Long compId = componenteIds.get(i);
                    Integer qtd = quantidades.get(i);
                    if (compId != null && compId > 0 && qtd != null && qtd > 0) {
                        Componente comp = componenteRepository.findById(compId)
                                .orElseThrow(() -> new IllegalArgumentException(
                                        "Componente não encontrado."));
                        ItemConfiguracao item = new ItemConfiguracao();
                        item.setComponente(comp);
                        item.setQuantidade(qtd);
                        build.getItens().add(item);
                    }
                }
            }

            configuracaoService.salvarBuild(build);
            redirectAttributes.addFlashAttribute("sucesso",
                    "Build salva com sucesso a partir da recomendação!");

        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("erro",
                    "Erro inesperado ao salvar. Tente novamente.");
        }

        return "redirect:/";
    }
    // -------------------------------------------------------
// BUILDS PUBLICAS E CURTIDAS
// -------------------------------------------------------

    @PostMapping("/build/visibilidade/{id}")
    public String alternarVisibilidade(@PathVariable Long id,
                                       RedirectAttributes redirectAttributes) {
        try {
            comunidadeService.alternarVisibilidade(id);
            redirectAttributes.addFlashAttribute("sucesso",
                    "Visibilidade da build alterada com sucesso!");
        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        }
        return "redirect:/perfil";
    }

    @PostMapping("/build/curtir/{id}")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> curtirBuild(@PathVariable Long id) {
        try {
            int totalCurtidas = comunidadeService.curtirBuild(id);
            Map<String, Object> resp = new HashMap<>();
            resp.put("sucesso", true);
            resp.put("curtidas", totalCurtidas);
            return ResponseEntity.ok(resp);
        } catch (Exception e) {
            Map<String, Object> resp = new HashMap<>();
            resp.put("sucesso", false);
            resp.put("mensagem", e.getMessage());
            return ResponseEntity.badRequest().body(resp);
        }
    }

// -------------------------------------------------------
// RANKING PUBLICO
// -------------------------------------------------------

    @GetMapping("/ranking")
    public String ranking(Model model) {
        List<Configuracao> builds = comunidadeService.buscarBuildsPublicas();
        model.addAttribute("builds", builds);
        return "ranking";
    }

// -------------------------------------------------------
// PERFIL DO USUARIO
// -------------------------------------------------------

    @GetMapping("/perfil")
    public String perfil(Model model) {
        List<Configuracao> minhasBuilds = configuracaoService.buscarBuildsDoUsuario();
        List<Wishlist> wishlist = comunidadeService.buscarWishlistDoUsuario();

        double totalInvestido = minhasBuilds.stream()
                .mapToDouble(Configuracao::getValorTotal).sum();
        String totalFormatado = String.format("R$ %,.2f", totalInvestido)
                .replace(",", "X").replace(".", ",").replace("X", ".");

        long buildsPublicas = minhasBuilds.stream()
                .filter(Configuracao::isPublica).count();
        int totalCurtidas = minhasBuilds.stream()
                .mapToInt(Configuracao::getCurtidas).sum();

        model.addAttribute("builds", minhasBuilds);
        model.addAttribute("wishlist", wishlist);
        model.addAttribute("totalInvestido", totalFormatado);
        model.addAttribute("buildsPublicas", buildsPublicas);
        model.addAttribute("totalCurtidas", totalCurtidas);
        return "perfil";
    }

// -------------------------------------------------------
// WISHLIST
// -------------------------------------------------------

    @PostMapping("/wishlist/toggle/{componenteId}")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> toggleWishlist(
            @PathVariable Long componenteId) {
        try {
            boolean adicionado = comunidadeService.alternarWishlist(componenteId);
            Map<String, Object> resp = new HashMap<>();
            resp.put("adicionado", adicionado);
            resp.put("mensagem", adicionado
                    ? "Adicionado à wishlist!"
                    : "Removido da wishlist.");
            return ResponseEntity.ok(resp);
        } catch (Exception e) {
            Map<String, Object> resp = new HashMap<>();
            resp.put("erro", e.getMessage());
            return ResponseEntity.badRequest().body(resp);
        }
    }

// -------------------------------------------------------
// AVALIACOES DE COMPONENTES
// -------------------------------------------------------

    @PostMapping("/componentes/{id}/avaliar")
    public String avaliarComponente(@PathVariable Long id,
                                    @RequestParam Integer nota,
                                    @RequestParam(required = false) String comentario,
                                    RedirectAttributes redirectAttributes) {
        try {
            comunidadeService.avaliarComponente(id, nota, comentario);
            redirectAttributes.addFlashAttribute("sucesso", "Avaliação salva com sucesso!");
        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("erro", e.getMessage());
        }
        return "redirect:/componentes/" + id;
    }
}