package br.edu.eseg.pcbuilder.service;

import br.edu.eseg.pcbuilder.model.AvaliacaoComponente;
import br.edu.eseg.pcbuilder.model.Componente;
import br.edu.eseg.pcbuilder.model.Configuracao;
import br.edu.eseg.pcbuilder.model.Usuario;
import br.edu.eseg.pcbuilder.model.Wishlist;
import br.edu.eseg.pcbuilder.repository.AvaliacaoRepository;
import br.edu.eseg.pcbuilder.repository.ComponenteRepository;
import br.edu.eseg.pcbuilder.repository.ConfiguracaoRepository;
import br.edu.eseg.pcbuilder.repository.WishlistRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ComunidadeService {

    private final ConfiguracaoRepository configuracaoRepository;
    private final AvaliacaoRepository avaliacaoRepository;
    private final WishlistRepository wishlistRepository;
    private final ComponenteRepository componenteRepository;

    public ComunidadeService(ConfiguracaoRepository configuracaoRepository,
                             AvaliacaoRepository avaliacaoRepository,
                             WishlistRepository wishlistRepository,
                             ComponenteRepository componenteRepository) {
        this.configuracaoRepository = configuracaoRepository;
        this.avaliacaoRepository = avaliacaoRepository;
        this.wishlistRepository = wishlistRepository;
        this.componenteRepository = componenteRepository;
    }

    // -------------------------------------------------------
    // BUILDS PUBLICAS
    // -------------------------------------------------------

    @Transactional
    public void alternarVisibilidade(Long buildId) {
        Usuario usuario = getUsuarioLogado();
        Configuracao build = configuracaoRepository.findById(buildId)
                .orElseThrow(() -> new IllegalArgumentException("Build não encontrada."));

        if (!build.getUsuario().getId().equals(usuario.getId())) {
            throw new IllegalArgumentException("Você não tem permissão para alterar esta build.");
        }

        build.setPublica(!build.isPublica());
        configuracaoRepository.save(build);
    }

    public List<Configuracao> buscarBuildsPublicas() {
        return configuracaoRepository.findByPublicaTrueOrderByCurtidasDesc();
    }

    // -------------------------------------------------------
    // CURTIDAS
    // -------------------------------------------------------

    @Transactional
    public int curtirBuild(Long buildId) {
        Configuracao build = configuracaoRepository.findById(buildId)
                .orElseThrow(() -> new IllegalArgumentException("Build não encontrada."));

        if (!build.isPublica()) {
            throw new IllegalArgumentException("Só é possível curtir builds públicas.");
        }

        build.setCurtidas(build.getCurtidas() + 1);
        configuracaoRepository.save(build);
        return build.getCurtidas();
    }

    // -------------------------------------------------------
    // AVALIACOES DE COMPONENTES
    // -------------------------------------------------------

    @Transactional
    public void avaliarComponente(Long componenteId, Integer nota, String comentario) {
        Usuario usuario = getUsuarioLogado();
        Componente componente = componenteRepository.findById(componenteId)
                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));

        if (nota < 1 || nota > 5) {
            throw new IllegalArgumentException("Nota deve ser entre 1 e 5.");
        }

        // Se ja avaliou, atualiza a avaliacao existente
        Optional<AvaliacaoComponente> existente =
                avaliacaoRepository.findByComponenteAndUsuario(componente, usuario);

        AvaliacaoComponente avaliacao = existente.orElse(new AvaliacaoComponente());
        avaliacao.setComponente(componente);
        avaliacao.setUsuario(usuario);
        avaliacao.setNota(nota);
        avaliacao.setComentario(comentario);
        avaliacaoRepository.save(avaliacao);
    }

    public List<AvaliacaoComponente> buscarAvaliacoes(Long componenteId) {
        Componente componente = componenteRepository.findById(componenteId)
                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));
        return avaliacaoRepository.findByComponenteOrderByDataDesc(componente);
    }

    public Double buscarMediaNotas(Long componenteId) {
        Double media = avaliacaoRepository.calcularMediaNotas(componenteId);
        return media != null ? Math.round(media * 10.0) / 10.0 : 0.0;
    }

    public Long buscarTotalAvaliacoes(Long componenteId) {
        return avaliacaoRepository.contarAvaliacoes(componenteId);
    }

    public Optional<AvaliacaoComponente> buscarAvaliacaoDoUsuario(Long componenteId) {
        try {
            Usuario usuario = getUsuarioLogado();
            Componente componente = componenteRepository.findById(componenteId)
                    .orElse(null);
            if (componente == null) return Optional.empty();
            return avaliacaoRepository.findByComponenteAndUsuario(componente, usuario);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    // -------------------------------------------------------
    // WISHLIST
    // -------------------------------------------------------

    @Transactional
    public boolean alternarWishlist(Long componenteId) {
        Usuario usuario = getUsuarioLogado();
        Componente componente = componenteRepository.findById(componenteId)
                .orElseThrow(() -> new IllegalArgumentException("Componente não encontrado."));

        Optional<Wishlist> existente =
                wishlistRepository.findByUsuarioAndComponente(usuario, componente);

        if (existente.isPresent()) {
            wishlistRepository.delete(existente.get());
            return false; // removido
        } else {
            Wishlist w = new Wishlist();
            w.setUsuario(usuario);
            w.setComponente(componente);
            wishlistRepository.save(w);
            return true; // adicionado
        }
    }

    public List<Wishlist> buscarWishlistDoUsuario() {
        return wishlistRepository.findByUsuarioOrderByDataAdicionadoDesc(getUsuarioLogado());
    }

    public boolean componenteNaWishlist(Long componenteId) {
        try {
            Usuario usuario = getUsuarioLogado();
            Componente componente = componenteRepository.findById(componenteId).orElse(null);
            if (componente == null) return false;
            return wishlistRepository.existsByUsuarioAndComponente(usuario, componente);
        } catch (Exception e) {
            return false;
        }
    }

    // -------------------------------------------------------
    // POPULARIDADE
    // -------------------------------------------------------

    public Long buscarUsoEmBuilds(Long componenteId) {
        return wishlistRepository.contarNasWishlists(componenteId);
    }

    // -------------------------------------------------------
    // HELPER
    // -------------------------------------------------------

    private Usuario getUsuarioLogado() {
        return (Usuario) SecurityContextHolder.getContext()
                .getAuthentication().getPrincipal();
    }
}