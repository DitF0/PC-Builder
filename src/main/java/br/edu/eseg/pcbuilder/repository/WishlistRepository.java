package br.edu.eseg.pcbuilder.repository;

import br.edu.eseg.pcbuilder.model.Componente;
import br.edu.eseg.pcbuilder.model.Usuario;
import br.edu.eseg.pcbuilder.model.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface WishlistRepository extends JpaRepository<Wishlist, Long> {

    List<Wishlist> findByUsuarioOrderByDataAdicionadoDesc(Usuario usuario);

    Optional<Wishlist> findByUsuarioAndComponente(Usuario usuario, Componente componente);

    boolean existsByUsuarioAndComponente(Usuario usuario, Componente componente);

    @Query("SELECT COUNT(w) FROM Wishlist w WHERE w.componente.id = :id")
    Long contarNasWishlists(@Param("id") Long componenteId);
}