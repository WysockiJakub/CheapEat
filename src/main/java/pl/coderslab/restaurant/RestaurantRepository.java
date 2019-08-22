package pl.coderslab.restaurant;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.promotion.Promotion;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    Restaurant findByName(String name);

    @Query("select u.restaurant from User u join u.restaurant where u.id = :userId")
    Restaurant findByUserId(@Param("userId") Long id);
}
