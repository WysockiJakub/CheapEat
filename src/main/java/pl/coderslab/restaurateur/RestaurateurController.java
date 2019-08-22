package pl.coderslab.restaurateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.auth.model.User;
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
        return Arrays.asList("Dania wegetariańskie", "Chińszczyzna", "Owoce morza", "Naleśniki", "Obiady domowe", "Kebab", "Burgery", "Pierogi", "Sushi", "Makarony", "Sałatki", "Ramen", "Pizza", "Alkohole");
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

    @GetMapping("/restaurant/profil")
    public String showRestaurantProfile(Model model) {
        Restaurant restaurant = restaurantRepository.findByUserId(UserUtilities.getLoggedUser(userRepository).getId());
        model.addAttribute("restaurant", restaurant);
        return "restaurateur/restaurantProfile";
    }


    //------------EDYCJA PROFILU RESTAURACJI----------------

    @GetMapping("/restaurant/edit")
    public String editRestaurantProfile(Model model) {
        Restaurant restaurant = restaurantRepository.findByUserId(UserUtilities.getLoggedUser(userRepository).getId());
        model.addAttribute("restaurant", restaurant);
        return "restaurateur/editRestaurant";
    }

    @PostMapping("/restaurant/edit")
    public String editRestaurantProfilePost(@ModelAttribute @Valid Restaurant request, BindingResult result) {
        if (result.hasErrors()) {
            return "restaurateur/editRestaurant";
        }
        Restaurant restaurant = restaurantRepository.findByUserId(UserUtilities.getLoggedUser(userRepository).getId());
        restaurant.setName(request.getName());
        restaurant.setInfo(request.getInfo());
        restaurant.setCity(request.getCity());
        restaurant.setZipCode(request.getZipCode());
        restaurant.setStreet(request.getStreet());
        restaurant.setHouseNumber(request.getHouseNumber());
        restaurant.setWebsite(request.getWebsite());
        restaurant.setEmail(request.getEmail());
        restaurant.setPhoneNumber(request.getPhoneNumber());
        restaurantRepository.save(restaurant);
        return "redirect:/restaurateur/restaurant/profil";
    }

    //---------LISTA PROMOCJI ZALOGOWANEJ RESTAURACJI-------------

    @GetMapping("/promotion/list")
    public String showLoggedRestaurantPromotions(Model model) {
        List<Promotion> restaurantPromotionList = UserUtilities.getLoggedUser(userRepository).getRestaurant().getPromotions();
        model.addAttribute("restaurantPromotionList", restaurantPromotionList);
        return "restaurateur/restaurantPromotionList";
    }

    //----------------WYSWIETLANIE PROMOCJI-------------------


    @GetMapping("/promotion/{id}")
    public String checkPromotion(@PathVariable Long id, Model model) {
        if (UserUtilities.getLoggedUser(userRepository).getRestaurant().getPromotions().contains(promotionRepository.getFirstById(id))) {
            Promotion promotion = promotionRepository.getFirstById(id);
            promotionService.countPromotionAverageNote(promotion);
            model.addAttribute("promotion", promotion);
            return "restaurateur/showPromotion";
        } else {
            return "404";
        }
    }

        //--------------EDYCJA PROMOCJI--------

    @GetMapping("/promotion/edit/{id}")
    public String showPromotion(@PathVariable Long id, Model model) {
        if (UserUtilities.getLoggedUser(userRepository).getRestaurant().getPromotions().contains(promotionRepository.getFirstById(id))) {
            Promotion promotion = promotionRepository.getFirstById(id);
            model.addAttribute("promotion", promotion);
            return "restaurateur/editPromotion";
        } else {
            return "404";
        }
    }

    @PostMapping("/promotion/edit/{promotionId}")
    public String editPromotion(@ModelAttribute @Valid Promotion request, BindingResult result, @PathVariable Long promotionId) {
        if (result.hasErrors()) {
            return "restaurateur/editPromotion";
        }
        Promotion promotion = promotionRepository.getFirstById(promotionId);
        promotion.setName(request.getName());
        promotion.setDescription(request.getDescription());
        promotion.setPrice(request.getPrice());
        promotion.setCategory(request.getCategory());
        promotion.setDayOfWeek(request.getDayOfWeek());
        promotionRepository.save(promotion);
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
        promotionRepository.save(promotion);
        User user = UserUtilities.getLoggedUser(userRepository);
        Long id = user.getId();
        Restaurant restaurant = restaurantRepository.findByUserId(id);
        promotion.setRestaurant(restaurant);
        promotionRepository.save(promotion);

        return "redirect:/restaurateur/promotion/list"; }

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
