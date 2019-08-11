package pl.coderslab.promotion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.review.Review;

import java.time.DayOfWeek;
import java.util.List;

public interface PromotionRepository extends JpaRepository<Promotion, Long> {
    List<Promotion> findAll();
    List<Promotion> findAllByDayOfWeek(DayOfWeek dayOfWeek);
    Promotion getFirstById(Long id);

    @Query("update Promotion p set p.reviews = ?1 where p.id = ?2")
    void setNewReviewsList(List<Review> reviews, Long id);

    @Query(value = "select avg (note) from promotion p join promotion_reviews pr on p.id = pr.promotion_id join reviews r on pr.reviews_id = r.id where p.id = :promotionId", nativeQuery = true)
    double getAverageNoteByPromotionId(@Param("promotionId") Long promotionId);
}
