package pl.coderslab.restaurateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.utilities.UserUtilities;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.DayOfWeek;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/restaurateur")
public class RestaurateurController {

    private UserRepository userRepository;
    private PromotionRepository promotionRepository;
    private RestaurantRepository restaurantRepository;
    private PromotionService promotionService;

    @Autowired
    public RestaurateurController(UserRepository userRepository, PromotionRepository promotionRepository, RestaurantRepository restaurantRepository, PromotionService promotionService) {
        this.userRepository = userRepository;
        this.promotionRepository = promotionRepository;
        this.restaurantRepository = restaurantRepository;
        this.promotionService = promotionService;
    }

    @ModelAttribute(name = "categories")
    List<String> categories() {
        return Arrays.asList("Polska", "Amerykanska", "Owoce morza", "Burger");
    }

    @ModelAttribute(name = "dayOfWeek")
    List<DayOfWeek> dayOfWeek() {
        return Arrays.asList(DayOfWeek.of(1), DayOfWeek.of(2), DayOfWeek.of(3), DayOfWeek.of(4), DayOfWeek.of(5), DayOfWeek.of(6), DayOfWeek.of(7));
    }

//    @ModelAttribute(name = "loggedUserRestaurant")
//    Restaurant restaurant() {
//        Long restaurantId = UserUtilities.getLoggedUser(userRepository).getRestaurant().getId();
//        Restaurant restaurant = restaurantRepository.findById(restaurantId);
//        return ;
//    }

    @GetMapping("/dashboard")
    public String restaurateurDashboard(HttpSession sess) {
        Restaurant restaurant = UserUtilities.getLoggedUser(userRepository).getRestaurant();
        sess.setAttribute("restaurant", restaurant);
        return "restaurateur/restaurateurDashboard";
    }



    //----------PROFIL RESTAURACJI-------------

    @GetMapping("/profil")
    public String showRestaurantProfile() {
        return "restaurateur/restaurantProfile";
    }

    //---------LISTA PROMOCJI ZALOGOWANEJ RESTAURACJI-------------

    @GetMapping("/promotion/list")
    public String showLoggedRestaurantPromotions(Model model) {
        List<Promotion> restaurantPromotionList = UserUtilities.getLoggedUser(userRepository).getRestaurant().getPromotions();
        model.addAttribute("restaurantPromotionList", restaurantPromotionList);
        return "restaurateur/restaurantPromotionList";
    }

    //--------WYSWIETLANIE PROMOCJI Z MOŻLIWOŚCIĄ ZMIANY DANYCH-------------------

    @GetMapping("/promotion/{promotionId}")
    public String showPromotion(@PathVariable Long promotionId, Model model, HttpSession sess) {
        Promotion promotion = promotionRepository.findById(promotionId).get();
        model.addAttribute("promotion", promotion);
        return "restaurateur/showPromotion";
    }

    @PostMapping("/promotion/{promotionId}")
    public String editPromotion(@ModelAttribute @Valid Promotion promotion, BindingResult result, Model model, @PathVariable Long promotionId) {
        if (result.hasErrors()) {
            return "restaurateur/showPromotion";
        }
        Long restaurantId = UserUtilities.getLoggedUser(userRepository).getRestaurant().getId();
        Restaurant restaurant = restaurantRepository.findById(restaurantId).get();
        promotion.setRestaurant(restaurant);
        promotion.setId(promotionId);
        promotionRepository.save(promotion);
        model.addAttribute("saved", true);
        return "redirect:/restaurateur/promotion/" + promotionId;
    }


    //----------DODANIE NOWEJ PROMOCJI-------------------

    @GetMapping("/promotion/add")
    public String addPromotion(Model model) {
        Promotion promotion = new Promotion();
        model.addAttribute("promotion", promotion);
        return "restaurateur/promotionAddForm";
    }

    @PostMapping("/promotion/add")
    public String addPromotionPost(@ModelAttribute @Valid Promotion promotion, BindingResult result) {
        if (result.hasErrors()) {
            return "restaurateur/promotionAddForm";
        }
//        promotion.setRestaurant(restaurantRepository.getOne(restaurant().get(0).getId()));
        promotionRepository.save(promotion);
        return "redirect:/restaurateur/promotion/list";
    }

    //------------STATYSTYKI--------------------

//    @GetMapping("/stats")
//    public String showStats(Model model) {
//        List<Promotion> promotions = UserUtilities.getLoggedUser(userRepository).getRestaurant().getPromotions();
//        double avgNoteOfAllPromotions = 0;
//        if (!promotions.isEmpty()){
//            for (Promotion p : promotions) {
//                avgNoteOfAllPromotions += p.getAverageNote();
//            }
//        }
//        model.addAttribute("avgNote", Utils.round(avgNoteOfAllPromotions/promotions.size(),2));
//        model.addAttribute("numberOfPromotions", promotions.size());
//
//
//
//
//
//    }






























}
