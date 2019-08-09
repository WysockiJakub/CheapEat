package pl.coderslab.promotion;

import org.springframework.data.jpa.repository.JpaRepository;

import java.time.DayOfWeek;
import java.util.List;

public interface PromotionRepository extends JpaRepository<Promotion, Long> {
    List<Promotion> findAll();
    List<Promotion> findAllByDayOfWeek(DayOfWeek dayOfWeek);
    Promotion getFirstById(Long id);

}
