package br.edu.eseg.pcbuilder.repository;

import br.edu.eseg.pcbuilder.model.Componente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ComponenteRepository extends JpaRepository<Componente, Long> {

    List<Componente> findByCategoriaNome(String nomeCategoria);

    @Query("SELECT c FROM Componente c ORDER BY c.fabricante.nome ASC, c.preco ASC")
    List<Componente> findAllOrdenadosPorFabricanteEPreco();
}