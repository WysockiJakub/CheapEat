package pl.coderslab.promotion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.time.DayOfWeek;
import java.util.List;

@Transactional
public interface PromotionRepository extends JpaRepository<Promotion, Long> {

    List<Promotion> findAllByDayOfWeek(DayOfWeek dayOfWeek);
    Promotion getFirstById(Long id);
    List<Promotion> findAllByCategory(String category);

    @Query(value = "select avg (note) from promotion p join promotion_reviews pr on p.id = pr.promotion_id join reviews r on pr.reviews_id = r.id where p.id = :promotionId", nativeQuery = true)
    double getAverageNoteByPromotionId(@Param("promotionId") Long promotionId);

    @Modifying
    @Query("delete from Promotion p where p.id=:id")
    void deletePromotion(@Param("id") Long id);

}
