package br.edu.eseg.pcbuilder.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import java.time.LocalDateTime;

@Entity
public class Wishlist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "componente_id")
    private Componente componente;

    private LocalDateTime dataAdicionado = LocalDateTime.now();

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Usuario getUsuario() { return usuario; }
    public void setUsuario(Usuario usuario) { this.usuario = usuario; }

    public Componente getComponente() { return componente; }
    public void setComponente(Componente componente) { this.componente = componente; }

    public LocalDateTime getDataAdicionado() { return dataAdicionado; }
    public void setDataAdicionado(LocalDateTime d) { this.dataAdicionado = d; }
}