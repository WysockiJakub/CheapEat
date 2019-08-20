package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user/restaurant")
public class RestaurantController {

    private RestaurantRepository restaurantRepository;
    private RestaurantService restaurantService;

    @Autowired
    public RestaurantController(RestaurantRepository restaurantRepository, RestaurantService restaurantService) {
        this.restaurantRepository = restaurantRepository;
        this.restaurantService = restaurantService;
    }

    @GetMapping("/{id}")
    public String checkRestaurant(@PathVariable Long id, Model model) {
        Restaurant restaurant = restaurantRepository.findById(id).get();
        restaurantService.countAvgRestaurantNote(restaurant);
        model.addAttribute("restaurant", restaurant);

        List<Promotion> promotions = restaurant.getPromotions();
        List<Promotion> todayPromotions = new ArrayList<>();
        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == LocalDate.now().getDayOfWeek()) {
                todayPromotions.add(p);
            }
        }
        model.addAttribute("todayPromotions", todayPromotions);
        return "restaurant";
    }
}
