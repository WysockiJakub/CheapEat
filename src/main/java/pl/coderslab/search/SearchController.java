package pl.coderslab.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.restaurant.RestaurantService;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/user/search")
public class SearchController {

    private PromotionRepository promotionRepository;
    private RestaurantRepository restaurantRepository;
    private RestaurantService restaurantService;

    @Autowired
    public SearchController(PromotionRepository promotionRepository, RestaurantRepository restaurantRepository, RestaurantService restaurantService) {
        this.promotionRepository = promotionRepository;
        this.restaurantRepository = restaurantRepository;
        this.restaurantService = restaurantService;
    }

    //-------------PROMOCJE----------------------

    @GetMapping(value={"/promotion", "/promotion/all"})
    public String search(Model model) {
        List<Promotion> list = promotionRepository.findAll();
        model.addAttribute("list", list);
        return "searchPromotion";
    }

    @GetMapping("/promotion/today")
    public String searchByToday(Model model) {
        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dow);
        model.addAttribute("list", list);
        return "searchPromotion";
    }

    @GetMapping("/promotion/day/{day}")
    public String searchByDayOfWeek(@PathVariable int day, Model model) {
        DayOfWeek dayOfWeek = DayOfWeek.of(day);
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dayOfWeek);
        model.addAttribute("list", list);
        return "searchPromotion";
    }

    @GetMapping("/promotion/{category}")
    public String searchByCategory(@PathVariable String category, Model model) {
        List<Promotion> list = promotionRepository.findAllByCategory(category);
        model.addAttribute("list", list);
        return "searchPromotion";
    }

    //------------RESTAURACJE-------------------

    @GetMapping(value = {"/restaurant", "/restaurant/all"})
    public String searchAll(Model model) {
        List<Restaurant> allrestaurants = restaurantRepository.findAll();
        restaurantService.countAvgRestaurantNoteForAllRestaurants(allrestaurants);
        model.addAttribute("list", allrestaurants);
        return "searchRestaurant";
    }

}
