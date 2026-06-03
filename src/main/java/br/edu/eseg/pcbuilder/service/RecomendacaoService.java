package br.edu.eseg.pcbuilder.service;

import br.edu.eseg.pcbuilder.model.Componente;
import br.edu.eseg.pcbuilder.model.PerfilUso;
import br.edu.eseg.pcbuilder.model.RecomendacaoDTO;
import br.edu.eseg.pcbuilder.repository.ComponenteRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class RecomendacaoService {

    private final ComponenteRepository componenteRepository;

    // Ordem de prioridade das categorias por perfil
    private static final List<String> ORDEM_GAMER =
            List.of("Placa de Video", "Processador", "Memoria RAM",
                    "Armazenamento", "Placa-Mae", "Cooler", "Fonte", "Gabinete");

    private static final List<String> ORDEM_TRABALHO =
            List.of("Processador", "Memoria RAM", "Armazenamento",
                    "Placa-Mae", "Fonte", "Cooler", "Gabinete", "Placa de Video");

    private static final List<String> ORDEM_CRIACAO =
            List.of("Processador", "Memoria RAM", "Armazenamento",
                    "Placa de Video", "Placa-Mae", "Cooler", "Fonte", "Gabinete");

    private static final List<String> ORDEM_CIENTIFICO =
            List.of("Processador", "Memoria RAM", "Placa-Mae",
                    "Armazenamento", "Cooler", "Fonte", "Gabinete", "Placa de Video");

    private static final List<String> ORDEM_MISTO =
            List.of("Processador", "Placa de Video", "Memoria RAM",
                    "Armazenamento", "Placa-Mae", "Cooler", "Fonte", "Gabinete");

    public RecomendacaoService(ComponenteRepository componenteRepository) {
        this.componenteRepository = componenteRepository;
    }

    public RecomendacaoDTO recomendar(PerfilUso perfil, Double orcamentoMax) {
        List<Componente> todos = new ArrayList<>(componenteRepository.findAll());

        // Filtro de orçamento — fontes nunca são removidas (essenciais)
        if (orcamentoMax != null && orcamentoMax > 0) {
            double limiteGeneroso = orcamentoMax * 1.1; // 10% de margem
            todos = todos.stream()
                    .filter(c -> c.getPreco() <= limiteGeneroso
                            || c.getCategoria().getNome().equalsIgnoreCase("Fonte"))
                    .collect(Collectors.toList());
        }

        // Agrupa por categoria
        Map<String, List<Componente>> porCategoria = new HashMap<>();
        for (Componente c : todos) {
            String cat = c.getCategoria().getNome();
            porCategoria.computeIfAbsent(cat, k -> new ArrayList<>()).add(c);
        }

        // Remove processadores cujo socket não tem placa-mãe no banco
// (ex: AM3+ e LGA1150 não têm placas-mãe cadastradas)
        Set<String> socketsComPlaca = porCategoria
                .getOrDefault("Placa-Mae", new ArrayList<>()).stream()
                .map(Componente::getSocket)
                .filter(s -> s != null && !s.isBlank())
                .collect(java.util.stream.Collectors.toSet());

        List<Componente> processadoresFiltrados = porCategoria
                .getOrDefault("Processador", new ArrayList<>()).stream()
                .filter(p -> {
                    String socket = p.getSocket();
                    // Mantém processador se socket for nulo/vazio OU se existir placa compatível
                    return socket == null || socket.isBlank() || socketsComPlaca.contains(socket);
                })
                .collect(Collectors.toList());

        if (!processadoresFiltrados.isEmpty()) {
            porCategoria.put("Processador", processadoresFiltrados);
        }

        // Ordena cada categoria conforme o perfil
        Map<String, List<Componente>> recomendados = new LinkedHashMap<>();
        List<String> ordemPrioridade = getOrdemPorPerfil(perfil);

        for (String cat : ordemPrioridade) {
            List<Componente> lista = porCategoria.getOrDefault(cat, new ArrayList<>());
            if (!lista.isEmpty()) {
                recomendados.put(cat, ordenarPorPerfil(lista, perfil, cat));
            }
        }

        // Categorias que não estão na ordem de prioridade
        for (Map.Entry<String, List<Componente>> entry : porCategoria.entrySet()) {
            if (!recomendados.containsKey(entry.getKey())) {
                recomendados.put(entry.getKey(), entry.getValue());
            }
        }

        // Garante que Placa-Mãe recomendada seja compatível com o melhor CPU
        List<Componente> cpus = recomendados.getOrDefault("Processador", List.of());
        List<Componente> placas = recomendados.getOrDefault("Placa-Mae", List.of());
        if (!cpus.isEmpty() && !placas.isEmpty()) {
            String socketCpu = cpus.get(0).getSocket();
            if (socketCpu != null) {
                // Move placas compatíveis para o início da lista
                List<Componente> compativeis = placas.stream()
                        .filter(p -> socketCpu.equals(p.getSocket()))
                        .collect(Collectors.toList());
                List<Componente> restantes = placas.stream()
                        .filter(p -> !socketCpu.equals(p.getSocket()))
                        .collect(Collectors.toList());
                List<Componente> ordenadas = new ArrayList<>(compativeis);
                ordenadas.addAll(restantes);
                recomendados.put("Placa-Mae", ordenadas);
            }
        }

        // Garante RAM compatível com a Placa-Mãe
        List<Componente> placasOrdenadas = recomendados.getOrDefault("Placa-Mae", List.of());
        List<Componente> rams = recomendados.getOrDefault("Memoria RAM", List.of());
        if (!placasOrdenadas.isEmpty() && !rams.isEmpty()) {
            String ddrPlaca = placasOrdenadas.get(0).getDdrVersion();
            if (ddrPlaca != null) {
                List<Componente> ramsCompativeis = rams.stream()
                        .filter(r -> ddrPlaca.equals(r.getDdrVersion()))
                        .collect(Collectors.toList());
                List<Componente> ramsRestantes = rams.stream()
                        .filter(r -> !ddrPlaca.equals(r.getDdrVersion()))
                        .collect(Collectors.toList());
                List<Componente> ramsOrdenadas = new ArrayList<>(ramsCompativeis);
                ramsOrdenadas.addAll(ramsRestantes);
                recomendados.put("Memoria RAM", ramsOrdenadas);
            }
        }

        // Aplica nivelamento de componentes:
        // COM orçamento → distribui proporcionalmente por categoria
        // SEM orçamento → nivela todas as categorias com base no top1 da categoria principal
        String catPrincipal = switch (perfil) {
            case GAMER, MISTO -> "Placa de Video";
            default           -> "Processador";
        };

        Map<String, Double> proporcoes = getProporcoesOrcamento(perfil);
        List<Componente> listaPrincipal = recomendados.getOrDefault(catPrincipal, List.of());

        if (orcamentoMax != null && orcamentoMax > 0) {
            // COM ORÇAMENTO: limite proporcional por categoria
            for (String cat : new java.util.ArrayList<>(recomendados.keySet())) {
                double limite = orcamentoMax * proporcoes.getOrDefault(cat, 0.15);
                if (limite <= 0) continue;
                List<Componente> lista = recomendados.get(cat);
                List<Componente> dentro = lista.stream().filter(c -> c.getPreco() <= limite).collect(Collectors.toList());
                List<Componente> fora   = lista.stream().filter(c -> c.getPreco() > limite).collect(Collectors.toList());
                List<Componente> nova   = new ArrayList<>(dentro); nova.addAll(fora);
                if (!nova.isEmpty()) recomendados.put(cat, nova);
            }
        } else if (!listaPrincipal.isEmpty()) {
            // SEM ORÇAMENTO: nivelar pelo percentual do top1 da categoria principal
            double precoPrincipal = listaPrincipal.get(0).getPreco();
            double maxPrincipal   = listaPrincipal.stream().mapToDouble(Componente::getPreco).max().orElse(1.0);
            double nivelPct       = precoPrincipal / maxPrincipal; // ex: 0.90 = top 10%

            for (String cat : new java.util.ArrayList<>(recomendados.keySet())) {
                if (cat.equals(catPrincipal) || cat.equalsIgnoreCase("Fonte") || cat.equalsIgnoreCase("Gabinete")) continue;
                List<Componente> lista = recomendados.get(cat);
                if (lista.isEmpty()) continue;

                double maxCat  = lista.stream().mapToDouble(Componente::getPreco).max().orElse(1.0);
                double rat     = proporcoes.getOrDefault(cat, 0.15) / Math.max(proporcoes.getOrDefault(catPrincipal, 0.25), 0.01);
                double limite  = maxCat * nivelPct * Math.min(rat * 1.6, 1.0);
                double piso    = limite * 0.35;

                List<Componente> noNivel    = lista.stream().filter(c -> c.getPreco() >= piso && c.getPreco() <= limite).collect(Collectors.toList());
                List<Componente> acimaNivel = lista.stream().filter(c -> c.getPreco() > limite).collect(Collectors.toList());
                List<Componente> abaixo     = lista.stream().filter(c -> c.getPreco() < piso).collect(Collectors.toList());

                List<Componente> nova = new ArrayList<>(noNivel);
                nova.addAll(acimaNivel);
                nova.addAll(abaixo);
                if (!nova.isEmpty()) recomendados.put(cat, nova);
            }
        }

        // Reaplica compatibilidade de socket após nivelamento
        {
            List<Componente> cpusF   = recomendados.getOrDefault("Processador", List.of());
            List<Componente> placasF = recomendados.getOrDefault("Placa-Mae", List.of());
            if (!cpusF.isEmpty() && !placasF.isEmpty()) {
                String sk = cpusF.get(0).getSocket();
                if (sk != null) {
                    List<Componente> c1 = placasF.stream().filter(p -> sk.equals(p.getSocket())).collect(Collectors.toList());
                    List<Componente> c2 = placasF.stream().filter(p -> !sk.equals(p.getSocket())).collect(Collectors.toList());
                    List<Componente> o1 = new ArrayList<>(c1); o1.addAll(c2);
                    recomendados.put("Placa-Mae", o1);
                }
            }
            // Reaplica DDR
            List<Componente> placasDDR = recomendados.getOrDefault("Placa-Mae", List.of());
            List<Componente> ramsF     = recomendados.getOrDefault("Memoria RAM", List.of());
            if (!placasDDR.isEmpty() && !ramsF.isEmpty()) {
                String ddr = placasDDR.get(0).getDdrVersion();
                if (ddr != null) {
                    List<Componente> r1 = ramsF.stream().filter(r -> ddr.equals(r.getDdrVersion())).collect(Collectors.toList());
                    List<Componente> r2 = ramsF.stream().filter(r -> !ddr.equals(r.getDdrVersion())).collect(Collectors.toList());
                    List<Componente> o2 = new ArrayList<>(r1); o2.addAll(r2);
                    recomendados.put("Memoria RAM", o2);
                }
            }
        }

        // Calcula estimativa
        double totalEstimado = recomendados.values().stream()
                .mapToDouble(lista -> lista.isEmpty() ? 0 : lista.get(0).getPreco())
                .sum();

        int consumoEstimado = recomendados.entrySet().stream()
                .filter(e -> !e.getKey().equalsIgnoreCase("Fonte")
                        && !e.getKey().equalsIgnoreCase("Gabinete"))
                .mapToInt(e -> e.getValue().isEmpty() ? 0 : e.getValue().get(0).getTdpWatts())
                .sum();

        RecomendacaoDTO dto = new RecomendacaoDTO();
        dto.setPerfil(perfil);
        dto.setJustificativa(gerarJustificativa(perfil));
        dto.setOrcamentoMax(orcamentoMax);
        dto.setComponentesRecomendados(recomendados);
        dto.setTotalEstimado(totalEstimado);
        dto.setConsumoEstimado(consumoEstimado);
        return dto;
    }

    // -------------------------------------------------------
    // Ordena a lista de uma categoria conforme o perfil
    // -------------------------------------------------------
    private List<Componente> ordenarPorPerfil(List<Componente> lista,
                                              PerfilUso perfil,
                                              String categoria) {
        return switch (perfil) {
            case GAMER -> {
                // Para games: Ryzen AM5 tem melhor IPC e eficiência energética
                // Prioridade: AM5 > LGA1851 > LGA1700 > resto, todos por preço desc
                if (categoria.equalsIgnoreCase("Processador")) {
                    List<Componente> am5   = lista.stream().filter(c -> "AM5".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> i51   = lista.stream().filter(c -> "LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> rest  = lista.stream()
                            .filter(c -> !"AM5".equals(c.getSocket()) && !"LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> r = new ArrayList<>(am5); r.addAll(i51); r.addAll(rest);
                    yield r;
                }
                if (categoria.equalsIgnoreCase("Placa de Video") || categoria.equalsIgnoreCase("Cooler")) {
                    yield ordenarTdpDesc(lista);
                }
                if (categoria.equalsIgnoreCase("Memoria RAM") || categoria.equalsIgnoreCase("Placa-Mae")) {
                    yield ordenarPrecoDesc(lista);
                }
                yield ordenarPrecoAsc(lista);
            }
            case TRABALHO -> {
                // CPU, RAM e Armazenamento: melhor desempenho primeiro
                if (categoria.equalsIgnoreCase("Processador")) {
                    yield ordenarTdpDesc(lista);
                }
                if (categoria.equalsIgnoreCase("Memoria RAM") ||
                        categoria.equalsIgnoreCase("Armazenamento")) {
                    yield ordenarPrecoDesc(lista);
                }
                // Placa-mãe boa, mas custo-benefício
                if (categoria.equalsIgnoreCase("Placa-Mae")) {
                    yield ordenarPrecoDesc(lista);
                }
                // Fonte, cooler, gabinete: menor preço suficiente
                yield ordenarPrecoAsc(lista);
            }
            case CRIACAO -> {
                if (categoria.equalsIgnoreCase("Processador")) {
                    List<Componente> am5  = lista.stream().filter(c -> "AM5".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> i51  = lista.stream().filter(c -> "LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> rest = lista.stream()
                            .filter(c -> !"AM5".equals(c.getSocket()) && !"LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> r = new ArrayList<>(am5); r.addAll(i51); r.addAll(rest);
                    yield r;
                }
                if (categoria.equalsIgnoreCase("Placa de Video") ||
                        categoria.equalsIgnoreCase("Memoria RAM") ||
                        categoria.equalsIgnoreCase("Armazenamento") ||
                        categoria.equalsIgnoreCase("Placa-Mae")) {
                    yield ordenarPrecoDesc(lista);
                }
                if (categoria.equalsIgnoreCase("Cooler")) {
                    yield ordenarTdpDesc(lista);
                }
                yield ordenarPrecoAsc(lista);
            }
            case CIENTIFICO -> {
                // CPU e RAM: máximo absoluto
                if (categoria.equalsIgnoreCase("Processador") ||
                        categoria.equalsIgnoreCase("Memoria RAM")) {
                    yield ordenarPrecoDesc(lista);
                }
                // Cooler robusto para aguentar carga contínua
                if (categoria.equalsIgnoreCase("Cooler")) {
                    yield ordenarTdpDesc(lista);
                }
                // Placa-mãe boa
                if (categoria.equalsIgnoreCase("Placa-Mae")) {
                    yield ordenarPrecoDesc(lista);
                }
                yield ordenarPrecoAsc(lista);
            }
            case MISTO -> {
                if (categoria.equalsIgnoreCase("Processador")) {
                    List<Componente> am5  = lista.stream().filter(c -> "AM5".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> i51  = lista.stream().filter(c -> "LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> rest = lista.stream()
                            .filter(c -> !"AM5".equals(c.getSocket()) && !"LGA1851".equals(c.getSocket()))
                            .sorted(Comparator.comparingDouble(Componente::getPreco).reversed()).collect(Collectors.toList());
                    List<Componente> r = new ArrayList<>(am5); r.addAll(i51); r.addAll(rest);
                    yield r;
                }
                if (categoria.equalsIgnoreCase("Placa de Video")) {
                    yield ordenarTdpDesc(lista);
                }
                if (categoria.equalsIgnoreCase("Memoria RAM") ||
                        categoria.equalsIgnoreCase("Armazenamento") ||
                        categoria.equalsIgnoreCase("Placa-Mae")) {
                    yield ordenarPrecoDesc(lista);
                }
                yield ordenarPrecoAsc(lista);
            }
        };
    }

    private String getCatPrincipal(PerfilUso perfil) {
        return switch (perfil) {
            case GAMER     -> "Placa de Video";
            case TRABALHO  -> "Processador";
            case CRIACAO   -> "Processador";
            case CIENTIFICO-> "Processador";
            case MISTO     -> "Placa de Video";
        };
    }

    private Map<String, Double> getProporcoesOrcamento(PerfilUso perfil) {
        // Proporções ajustadas para mercado brasileiro (preços reais BR)
        // Gabinete incluído pois agora a build automática seleciona gabinete
        return switch (perfil) {
            case GAMER -> Map.of(
                    // GPU é o componente mais importante para games
                    "Placa de Video", 0.33, "Processador", 0.18, "Placa-Mae", 0.12,
                    "Memoria RAM", 0.10, "Armazenamento", 0.07, "Cooler", 0.05,
                    "Fonte", 0.08, "Gabinete", 0.07
            );
            case TRABALHO -> Map.of(
                    // CPU e RAM dominam para produtividade
                    "Processador", 0.22, "Placa-Mae", 0.18, "Memoria RAM", 0.18,
                    "Armazenamento", 0.13, "Fonte", 0.09, "Cooler", 0.05,
                    "Placa de Video", 0.05, "Gabinete", 0.05
            );
            case CRIACAO -> Map.of(
                    // GPU sobe para 28%: renderização/edição precisa de GPU boa
                    // R$8500 * 28% = R$2380 → pega RTX 3060 Ti ou RTX 4060
                    "Placa de Video", 0.28, "Processador", 0.22, "Memoria RAM", 0.16,
                    "Armazenamento", 0.13, "Placa-Mae", 0.10, "Cooler", 0.04,
                    "Fonte", 0.04, "Gabinete", 0.03
            );
            case CIENTIFICO -> Map.of(
                    // CPU e RAM máximos para ML/simulações
                    "Processador", 0.33, "Memoria RAM", 0.28, "Placa-Mae", 0.14,
                    "Armazenamento", 0.10, "Cooler", 0.05, "Fonte", 0.05,
                    "Placa de Video", 0.0, "Gabinete", 0.05
            );
            case MISTO -> Map.of(
                    // Equilíbrio: GPU e CPU igualmente importantes
                    "Placa de Video", 0.26, "Processador", 0.20, "Memoria RAM", 0.14,
                    "Placa-Mae", 0.12, "Armazenamento", 0.10, "Fonte", 0.07,
                    "Cooler", 0.05, "Gabinete", 0.06
            );
        };
    }

    private List<String> getOrdemPorPerfil(PerfilUso perfil) {
        return switch (perfil) {
            case GAMER      -> ORDEM_GAMER;
            case TRABALHO   -> ORDEM_TRABALHO;
            case CRIACAO    -> ORDEM_CRIACAO;
            case CIENTIFICO -> ORDEM_CIENTIFICO;
            case MISTO      -> ORDEM_MISTO;
        };
    }

    // -------------------------------------------------------
    // Metodos auxiliares de ordenacao
    // -------------------------------------------------------
    private List<Componente> ordenarTdpDesc(List<Componente> lista) {
        return lista.stream()
                .sorted(Comparator.comparingInt(Componente::getTdpWatts).reversed())
                .collect(Collectors.toList());
    }

    private List<Componente> ordenarPrecoDesc(List<Componente> lista) {
        return lista.stream()
                .sorted(Comparator.comparingDouble(Componente::getPreco).reversed())
                .collect(Collectors.toList());
    }

    private List<Componente> ordenarPrecoAsc(List<Componente> lista) {
        return lista.stream()
                .sorted(Comparator.comparingDouble(Componente::getPreco))
                .collect(Collectors.toList());
    }

    private List<Componente> ordenarCustoBeneficio(List<Componente> lista) {
        return lista.stream()
                .sorted(Comparator.comparingDouble(
                        (Componente c) -> -(c.getTdpWatts() / c.getPreco())
                ))
                .collect(Collectors.toList());
    }

    private String gerarJustificativa(PerfilUso perfil) {
        return switch (perfil) {
            case GAMER ->
                    "Priorizamos a GPU e CPU de alto desempenho. " +
                            "Em jogos, a placa de vídeo é o componente mais impactante.";
            case TRABALHO ->
                    "Priorizamos custo-benefício e baixo consumo. " +
                            "Componentes estáveis para uso diário sem gastos desnecessários.";
            case CRIACAO ->
                    "Priorizamos CPU com muitos núcleos e armazenamento NVMe rápido. " +
                            "Edição de vídeo e renderização dependem de processamento paralelo.";
            case CIENTIFICO ->
                    "Priorizamos CPU e RAM no máximo disponível. " +
                            "Simulações e machine learning dependem de memória e núcleos de CPU.";
            case MISTO ->
                    "Equilibramos desempenho e custo. " +
                            "Componentes com melhor relação TDP/preço para uso versátil.";
        };
    }
}