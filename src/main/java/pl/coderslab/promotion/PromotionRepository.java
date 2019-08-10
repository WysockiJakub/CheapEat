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
}
