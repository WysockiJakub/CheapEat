package pl.coderslab.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.auth.model.User;
import pl.coderslab.promotion.Promotion;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    @Query("update User e set e.favouritesPromotions = :newFavouritePromotions where e.id = :userId")
    void updateFavouritePromotions(@Param("newFavouritePromotions")List<Promotion> newFavouritePromotions, @Param("userId") Long userId);
}
