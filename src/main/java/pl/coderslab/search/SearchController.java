package pl.coderslab.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.restaurant.RestaurantService;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/user/search")
public class SearchController {

    private PromotionRepository promotionRepository;
    private RestaurantRepository restaurantRepository;
    private RestaurantService restaurantService;
    private PromotionService promotionService;

    @Autowired
    public SearchController(PromotionRepository promotionRepository, RestaurantRepository restaurantRepository, RestaurantService restaurantService, PromotionService promotionService) {
        this.promotionRepository = promotionRepository;
        this.restaurantRepository = restaurantRepository;
        this.restaurantService = restaurantService;
        this.promotionService = promotionService;
    }

    @ModelAttribute(name = "categories")
    List<String> categories() {
        return Arrays.asList("Dania wegetariańskie", "Chińszczyzna", "Owoce morza", "Naleśniki", "Obiady domowe", "Kebab", "Burgery", "Pierogi", "Sushi", "Makarony", "Sałatki", "Ramen", "Pizza", "Alkohole");
    }

    //-------------PROMOCJE----------------------

    @GetMapping(value={"/promotion", "/promotion/all"})
    public String search(Model model) {
        List<Promotion> list = promotionRepository.findAll();
        model.addAttribute("list", list);
        return "searchPromotionNew";
    }

    @GetMapping("/promotion/today")
    public String searchByToday(Model model) {
        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dow);
        model.addAttribute("list", list);
        return "searchPromotionNew";
    }

    @GetMapping("/promotion/day/{day}")
    public String searchByDayOfWeek(@PathVariable int day, Model model) {
        DayOfWeek dayOfWeek = DayOfWeek.of(day);
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dayOfWeek);
        model.addAttribute("list", list);
        return "searchPromotionNew";
    }

    @GetMapping("/promotion/category/{category}")
    public String searchByCategory(@PathVariable String category, Model model) {
        List<Promotion> list = promotionRepository.findAllByCategory(category);
        model.addAttribute("list", list);
        return "searchPromotionNew";
    }

    @GetMapping("/promotion/note")
    public String searchByAvgNote(Model model) {
        List<Promotion> list = promotionRepository.findAll();
        promotionService.countPromotionAverageNoteForAllPromotions(list);
        list.stream()
                .sorted(Comparator.comparing(Promotion::getAverageNote));
        model.addAttribute("list", list);
        return "searchPromotionNew";
    }

    //------------RESTAURACJE-------------------

    @GetMapping(value = {"/restaurant", "/restaurant/all"})
    public String searchAll(Model model) {
        List<Restaurant> allRestaurants = restaurantRepository.findAll();
        restaurantService.countAvgRestaurantNoteForAllRestaurants(allRestaurants);
        model.addAttribute("list", allRestaurants);
        return "searchRestaurantNew";
    }

}
