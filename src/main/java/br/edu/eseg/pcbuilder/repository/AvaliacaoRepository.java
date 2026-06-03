package br.edu.eseg.pcbuilder.repository;

import br.edu.eseg.pcbuilder.model.AvaliacaoComponente;
import br.edu.eseg.pcbuilder.model.Componente;
import br.edu.eseg.pcbuilder.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AvaliacaoRepository extends JpaRepository<AvaliacaoComponente, Long> {

    List<AvaliacaoComponente> findByComponenteOrderByDataDesc(Componente componente);

    Optional<AvaliacaoComponente> findByComponenteAndUsuario(Componente componente, Usuario usuario);

    @Query("SELECT AVG(a.nota) FROM AvaliacaoComponente a WHERE a.componente.id = :id")
    Double calcularMediaNotas(@Param("id") Long componenteId);

    @Query("SELECT COUNT(a) FROM AvaliacaoComponente a WHERE a.componente.id = :id")
    Long contarAvaliacoes(@Param("id") Long componenteId);
}