package pl.coderslab.homepage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.restaurant.RestaurantRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;

@Controller
public class HomepageController {

    private PromotionRepository promotionRepository;
    private RestaurantRepository restaurantRepository;

    @Autowired
    public HomepageController(PromotionRepository promotionRepository, RestaurantRepository restaurantRepository) {
        this.promotionRepository = promotionRepository;
        this.restaurantRepository = restaurantRepository;
    }

    @GetMapping("/user/dashboard")
    public String userDashboard(Model model) {
        int allPromotions = promotionRepository.findAll().size();
        model.addAttribute("allPromotions", allPromotions);

        int allRestaurants = restaurantRepository.findAll().size();
        model.addAttribute("allRestaurants", allRestaurants);

        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        List<Promotion> todayPromotions = promotionRepository.findAllByDayOfWeek(dow);
        model.addAttribute("todayPromotions", todayPromotions);

        return "dashboard2";
    }
}
