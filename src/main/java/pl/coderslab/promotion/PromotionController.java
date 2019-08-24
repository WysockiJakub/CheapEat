package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.review.Review;
import pl.coderslab.review.ReviewRepository;
import pl.coderslab.utilities.UserUtilities;

import javax.validation.Valid;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


@Controller
@RequestMapping("/user")
public class PromotionController {

    private PromotionRepository promotionRepository;
    private PromotionService promotionService;
    private UserRepository userRepository;
    private ReviewRepository reviewRepository;
    private RestaurantRepository restaurantRepository;

    @Autowired
    public PromotionController(PromotionRepository promotionRepository, PromotionService promotionService, UserRepository userRepository, ReviewRepository reviewRepository, RestaurantRepository restaurantRepository) {
        this.promotionRepository = promotionRepository;
        this.promotionService = promotionService;
        this.userRepository = userRepository;
        this.reviewRepository = reviewRepository;
        this.restaurantRepository = restaurantRepository;
    }

    @ModelAttribute("restaurants")
    List<Restaurant> restaurants() { return restaurantRepository.findAll();}



    //---------WYŚWIETL PROMOCJĘ--------------

    @GetMapping("/promotion/{id}/info")
    public String checkPromotion(@PathVariable Long id, Model model) {
        Promotion promotion = promotionRepository.getFirstById(id);
        promotionService.countPromotionAverageNote(promotion);                                                            //przeliczenie średniej oceny promocji
        promotionService.countPromotionSubscription(promotion);                                                           //przeliczenie liczby subskrypcji promocji

        model.addAttribute("favourite", false);                                                                     //sprawdzanie czy zalogowany użytkownik posiada w ulubionych aktualnie wyświetlana promocję
        if (UserUtilities.getLoggedUser(userRepository).getFavouritesPromotions().contains(promotion)) {
            model.addAttribute("favourite", true);
        }

        model.addAttribute("promotion", promotion);

        return "promotion/promotionInfo";
    }

    @GetMapping("/promotion/{id}/reviews")
    public String checkPromotionReviews(@PathVariable Long id, Model model) {
        Promotion promotion = promotionRepository.getFirstById(id);
        promotionService.countPromotionAverageNote(promotion);                                                            //przeliczenie średniej oceny promocji
        promotionService.countPromotionSubscription(promotion);                                                           //przeliczenie liczby subskrypcji promocji

        model.addAttribute("favourite", false);                                                                     //sprawdzanie czy zalogowany użytkownik posiada w ulubionych aktualnie wyświetlana promocję
        if (UserUtilities.getLoggedUser(userRepository).getFavouritesPromotions().contains(promotion)) {
            model.addAttribute("favourite", true);
        }
        model.addAttribute("addedReview",false);
        for (Review review : promotion.getReviews()) {
            if (review.getUsername().equals(UserUtilities.getLoggedUser(userRepository).getUsername())) {
                model.addAttribute("addedReview", true);
                model.addAttribute("userReview", review);
                break;
            }
        }
        model.addAttribute("promotion", promotion);
        model.addAttribute("review", new Review());

        return "promotion/promotionReviews";
    }

    //---------WYŚWIETL LISTE ULUBIONYCH PROMOCJI---------

    @GetMapping("/promotion/favourite/all")
    public String showAllFavouritePromotions(Model model) {
        User user = UserUtilities.getLoggedUser(userRepository);
        List<Promotion> userFavouritePromotions = user.getFavouritesPromotions();
        model.addAttribute("list", userFavouritePromotions);
        return "user/favouritePromotions";
    }

    @GetMapping("/promotion/favourite/today")
    public String showTodayFavouritePromotions(Model model) {
        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        User user = UserUtilities.getLoggedUser(userRepository);
        List<Promotion> userFavouritePromotions = user.getFavouritesPromotions();
        List<Promotion> todayFavouritePromotions = userFavouritePromotions.stream()
                .filter(p -> p.getDayOfWeek() == dow)
                .collect(Collectors.toList());


        model.addAttribute("list", todayFavouritePromotions);
        return "user/favouritePromotions";
    }

    @GetMapping("/promotion/favourite/day")
    public String showFavouritePromotionsByDayOfWeek(Model model) {
        User user = UserUtilities.getLoggedUser(userRepository);
        List<Promotion> userFavouritePromotions = user.getFavouritesPromotions();
        promotionService.addToModelFavouritePromotionsByDayOfWeek(userFavouritePromotions, model);
        return "user/favouritePromotionsDay";
    }

    @GetMapping("/promotion/favourite/category")
    public String showFavouritePromotionsByCategory(Model model) {
        User user = UserUtilities.getLoggedUser(userRepository);
        List<Promotion> userFavouritePromotions = user.getFavouritesPromotions();
        promotionService.addToModelFavouritePromotionsByCategory(userFavouritePromotions, model);
        return "user/favouritePromotionsCategory";
    }

    //---------DODAJ RECENZJE DO PROMOCJI-----------------

    @PostMapping("/promotion/{promotionId}/reviews")
    public String addReviewToPromotion(@PathVariable Long promotionId, @ModelAttribute @Valid Review review, BindingResult result){
        if (result.hasErrors()) {
            return "promotion/promotionReviews";
        }
        Promotion pr = promotionRepository.getFirstById(promotionId);
        User user = UserUtilities.getLoggedUser(userRepository);
        review.setUsername(user.getUsername());
        reviewRepository.save(review);
        pr.addToReviews(review);
        promotionRepository.save(pr);
        return "promotion/promotionReviews";
    }

    //-----------DODAJ PROMOCJĘ DO ULUBIONYCH--------------

    @GetMapping("/promotion/addToFavourite/{id}")
    public String addToFavourite(@PathVariable Long id) {

        User user = UserUtilities.getLoggedUser(userRepository);
        Promotion promotion = promotionRepository.getFirstById(id);
        user.addFavouritePromotion(promotion);
        userRepository.save(user);
        return "redirect:/user/promotion/" + id + "/info";
    }

    @GetMapping("/promotion/deleteFromFavourite/{id}")
    public String deleteFromFavourite(@PathVariable Long id) {
        User user = UserUtilities.getLoggedUser(userRepository);
        Promotion promotion = promotionRepository.getFirstById(id);
        user.deleteFavouritePromotion(promotion);
        userRepository.save(user);
        return "redirect:/user/promotion/" + id + "/info";
    }



























}
