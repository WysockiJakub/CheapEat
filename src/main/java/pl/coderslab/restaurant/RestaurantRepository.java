package pl.coderslab.restaurant;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.promotion.Promotion;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    Restaurant findByName(String name);
}
