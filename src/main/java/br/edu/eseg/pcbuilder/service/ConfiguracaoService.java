package br.edu.eseg.pcbuilder.service;

import br.edu.eseg.pcbuilder.model.Configuracao;
import br.edu.eseg.pcbuilder.model.ItemConfiguracao;
import br.edu.eseg.pcbuilder.model.Usuario;
import br.edu.eseg.pcbuilder.repository.ConfiguracaoRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ConfiguracaoService {

    private final ConfiguracaoRepository configuracaoRepository;

    public ConfiguracaoService(ConfiguracaoRepository configuracaoRepository) {
        this.configuracaoRepository = configuracaoRepository;
    }

    @Transactional
    public Configuracao salvarBuild(Configuracao build) {
        Usuario usuarioLogado = getUsuarioLogado();
        build.setUsuario(usuarioLogado);

        validarMinimoDeCategorias(build);
        validarCompatibilidadeEnergetica(build);
        validarCompatibilidadeSocket(build);
        validarCompatibilidadeDdr(build);

        for (ItemConfiguracao item : build.getItens()) {
            item.setConfiguracao(build);
        }

        return configuracaoRepository.save(build);
    }

    @Transactional
    public void excluirBuild(Long id) {
        Usuario usuarioLogado = getUsuarioLogado();
        Configuracao build = configuracaoRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Build não encontrada."));

        if (!build.getUsuario().getId().equals(usuarioLogado.getId())) {
            throw new IllegalArgumentException("Você não tem permissão para excluir esta build.");
        }

        configuracaoRepository.delete(build);
    }

    public List<Configuracao> buscarBuildsDoUsuario() {
        return configuracaoRepository.findByUsuario(getUsuarioLogado());
    }

    // CORRECAO: este metodo estava sendo chamado no controller mas nao existia no servico
    public Optional<Configuracao> buscarPorId(Long id) {
        return configuracaoRepository.findById(id);
    }

    // -------------------------------------------------------
    // REGRA 1: build deve ter pelo menos 3 categorias distintas
    // -------------------------------------------------------
    private void validarMinimoDeCategorias(Configuracao build) {
        long categoriasDiferentes = build.getItens().stream()
                .map(item -> item.getComponente().getCategoria().getId())
                .distinct()
                .count();

        if (categoriasDiferentes < 3) {
            throw new IllegalArgumentException(
                    "Sua build precisa ter componentes de pelo menos 3 categorias diferentes. " +
                    "Categorias selecionadas: " + categoriasDiferentes + "."
            );
        }
    }

    // -------------------------------------------------------
    // REGRA 2: build deve conter uma Fonte de alimentação
    // REGRA 3: consumo total não pode ultrapassar 80% da capacidade da Fonte
    // -------------------------------------------------------
    private void validarCompatibilidadeEnergetica(Configuracao build) {
        int capacidadeFonte = build.getItens().stream()
                .filter(item -> item.getComponente().getCategoria().getNome().equalsIgnoreCase("Fonte"))
                .mapToInt(item -> item.getComponente().getTdpWatts() * item.getQuantidade())
                .sum();

        if (capacidadeFonte == 0) {
            throw new IllegalArgumentException(
                    "Sua montagem precisa de uma Fonte de alimentação. " +
                            "Dica: para a maioria das builds, uma fonte Gold de 650W a 850W é suficiente."
            );
        }

        int consumoTotal = build.getItens().stream()
                .filter(item -> !item.getComponente().getCategoria().getNome().equalsIgnoreCase("Fonte")
                        && !item.getComponente().getCategoria().getNome().equalsIgnoreCase("Gabinete"))
                .mapToInt(ItemConfiguracao::getTdpTotal)
                .sum();

        int limiteSeguro = (int) (capacidadeFonte * 0.80);

        if (consumoTotal > limiteSeguro) {
            int fonteRecomendada = (int) Math.ceil(consumoTotal / 0.80 / 50.0) * 50;
            throw new IllegalArgumentException(
                    "Fonte insuficiente! Consumo: " + consumoTotal + "W, " +
                            "mas sua fonte de " + capacidadeFonte + "W suporta no máximo " + limiteSeguro + "W (80%). " +
                            "Dica: troque para uma fonte de pelo menos " + fonteRecomendada + "W."
            );
        }
    }

    private Usuario getUsuarioLogado() {
        return (Usuario) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
    // -------------------------------------------------------
// REGRA 4: Socket do processador deve ser igual ao da placa-mae
// -------------------------------------------------------
    private void validarCompatibilidadeSocket(Configuracao build) {
        String socketCpu = build.getItens().stream()
                .filter(i -> i.getComponente().getCategoria().getNome().equalsIgnoreCase("Processador"))
                .map(i -> i.getComponente().getSocket())
                .filter(s -> s != null && !s.isBlank())
                .findFirst().orElse(null);

        String socketPlaca = build.getItens().stream()
                .filter(i -> i.getComponente().getCategoria().getNome().equalsIgnoreCase("Placa-Mae"))
                .map(i -> i.getComponente().getSocket())
                .filter(s -> s != null && !s.isBlank())
                .findFirst().orElse(null);

        if (socketCpu != null && socketPlaca != null && !socketCpu.equals(socketPlaca)) {
            throw new IllegalArgumentException(
                    "Incompatibilidade de socket: o processador usa " + socketCpu +
                            " mas a placa-mãe usa " + socketPlaca + ". " +
                            "Dica: para um processador " + socketCpu +
                            ", escolha uma placa-mãe com socket " + socketCpu + " também."
            );
        }
    }

    // -------------------------------------------------------
// REGRA 5: Versao de DDR da RAM deve ser suportada pela placa-mae
// -------------------------------------------------------
    private void validarCompatibilidadeDdr(Configuracao build) {
        String ddrRam = build.getItens().stream()
                .filter(i -> i.getComponente().getCategoria().getNome().equalsIgnoreCase("Memoria RAM"))
                .map(i -> i.getComponente().getDdrVersion())
                .filter(d -> d != null && !d.isBlank())
                .findFirst().orElse(null);

        String ddrPlaca = build.getItens().stream()
                .filter(i -> i.getComponente().getCategoria().getNome().equalsIgnoreCase("Placa-Mae"))
                .map(i -> i.getComponente().getDdrVersion())
                .filter(d -> d != null && !d.isBlank())
                .findFirst().orElse(null);

        if (ddrRam != null && ddrPlaca != null) {
            // Placa DDR4/DDR5 aceita ambos — sem restricao
            if (ddrPlaca.equalsIgnoreCase("DDR4/DDR5")) return;

            // Verifica se a versao da RAM esta contida na versao da placa
            if (!ddrPlaca.toLowerCase().contains(ddrRam.toLowerCase())) {
                throw new IllegalArgumentException(
                        "Incompatibilidade de memoria: a RAM e " + ddrRam +
                                " mas a placa-mae suporta apenas " + ddrPlaca +
                                ". Troque a RAM ou a placa-mae."
                );
            }
        }
    }
}
