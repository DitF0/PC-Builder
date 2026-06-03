package br.edu.eseg.pcbuilder.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

@Entity
public class Componente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String nome;

    private String especificacao;

    private String imagemUrl;

    private String linkKabum;

    private String linkPichau;

    private String linkTerabyte;

    @NotNull
    @Positive
    private Double preco;

    @NotNull
    @Positive
    @Column(name = "tdp_watts")
    private Integer tdpWatts;

    @ManyToOne
    @JoinColumn(name = "categoria_id")
    private Categoria categoria;

    @ManyToOne
    @JoinColumn(name = "fabricante_id")
    private Fabricante fabricante;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEspecificacao() {
        return especificacao;
    }

    public void setEspecificacao(String especificacao) {
        this.especificacao = especificacao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public Integer getTdpWatts() {
        return tdpWatts;
    }

    public void setTdpWatts(Integer tdpWatts) {
        this.tdpWatts = tdpWatts;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Fabricante getFabricante() {
        return fabricante;
    }

    public void setFabricante(Fabricante fabricante) {
        this.fabricante = fabricante;
    }

    public String getImagemUrl() {
        return imagemUrl;
    }

    public void setImagemUrl(String imagemUrl) {
        this.imagemUrl = imagemUrl;
    }

    public String getLinkKabum() {
        return linkKabum;
    }

    public void setLinkKabum(String linkKabum) {
        this.linkKabum = linkKabum;
    }

    public String getLinkPichau() {
        return linkPichau;
    }

    public void setLinkPichau(String linkPichau) {
        this.linkPichau = linkPichau;
    }

    public String getLinkTerabyte() {
        return linkTerabyte;
    }

    public void setLinkTerabyte(String linkTerabyte) {
        this.linkTerabyte = linkTerabyte;
    }

    private String socket;

    private String ddrVersion;

    public String getSocket() {
        return socket;
    }

    public void setSocket(String socket) {
        this.socket = socket;
    }

    public String getDdrVersion() {
        return ddrVersion;
    }

    public void setDdrVersion(String ddrVersion) {
        this.ddrVersion = ddrVersion;
    }

    public String getPrecoFormatado() {
        if (preco == null) return "R$ 0,00";
        return String.format("R$ %,.2f", preco)
                .replace(",", "X").replace(".", ",").replace("X", ".");
    }
}
