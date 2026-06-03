package br.edu.eseg.pcbuilder.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
public class AvaliacaoComponente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "componente_id")
    private Componente componente;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;

    @NotNull
    @Min(1)
    @Max(5)
    private Integer nota;

    private String comentario;

    private LocalDateTime data = LocalDateTime.now();

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Componente getComponente() { return componente; }
    public void setComponente(Componente componente) { this.componente = componente; }

    public Usuario getUsuario() { return usuario; }
    public void setUsuario(Usuario usuario) { this.usuario = usuario; }

    public Integer getNota() { return nota; }
    public void setNota(Integer nota) { this.nota = nota; }

    public String getComentario() { return comentario; }
    public void setComentario(String comentario) { this.comentario = comentario; }

    public LocalDateTime getData() { return data; }
    public void setData(LocalDateTime data) { this.data = data; }
}