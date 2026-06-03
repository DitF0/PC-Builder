package br.edu.eseg.pcbuilder.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;
import java.time.LocalDateTime;
import jakarta.persistence.FetchType;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Configuracao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String nomeBuild;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;

    @OneToMany(mappedBy = "configuracao", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<ItemConfiguracao> itens = new ArrayList<>();

    private boolean publica = false;

    private int curtidas = 0;

    private LocalDateTime dataCriacao = LocalDateTime.now();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomeBuild() {
        return nomeBuild;
    }

    public void setNomeBuild(String nomeBuild) {
        this.nomeBuild = nomeBuild;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<ItemConfiguracao> getItens() {
        return itens;
    }

    public void setItens(List<ItemConfiguracao> itens) {
        this.itens = itens;
    }

    public Double getValorTotal() {
        return itens.stream()
                .mapToDouble(ItemConfiguracao::getPrecoTotal)
                .sum();
    }

    public Integer getTdpTotal() {
        return itens.stream()
                .mapToInt(ItemConfiguracao::getTdpTotal)
                .sum();
    }
    public String getValorTotalFormatado() {
        return String.format("R$ %,.2f", getValorTotal())
                .replace(",", "X").replace(".", ",").replace("X", ".");
    }

    public boolean isPublica() {
        return publica;
    }

    public void setPublica(boolean publica) {
        this.publica = publica;
    }

    public int getCurtidas() {
        return curtidas;
    }

    public void setCurtidas(int curtidas) {
        this.curtidas = curtidas;
    }

    public LocalDateTime getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(LocalDateTime dataCriacao) {
        this.dataCriacao = dataCriacao;
    }
}
