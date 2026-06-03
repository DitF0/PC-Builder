package br.edu.eseg.pcbuilder.repository;

import br.edu.eseg.pcbuilder.model.Configuracao;
import br.edu.eseg.pcbuilder.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ConfiguracaoRepository extends JpaRepository<Configuracao, Long> {

    List<Configuracao> findByUsuario(Usuario usuario);

    List<Configuracao> findByPublicaTrueOrderByCurtidasDesc();

    @Query("SELECT c FROM Configuracao c WHERE c.publica = true ORDER BY c.curtidas DESC")
    List<Configuracao> findTopBuildsPublicas();

    @Query("SELECT COUNT(i.componente.id), i.componente FROM ItemConfiguracao i " +
            "GROUP BY i.componente ORDER BY COUNT(i.componente.id) DESC")
    List<Object[]> findComponentesMaisUsados();
}