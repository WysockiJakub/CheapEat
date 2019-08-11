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
import java.util.List;


@Controller
@RequestMapping("/promotion")
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

    @GetMapping("/{id}")
    public String checkPromotion(@PathVariable Long id, Model model) {
        Promotion promotion = promotionRepository.getFirstById(id);
        promotionService.countPromotionAverageNote(promotion);                                                            //przeliczenie średniej oceny promocji
        model.addAttribute("favourite", false);                                                                     //sprawdzanie czy zalogowany użytkownik posiada w ulubionych aktualnie wyświetlana promocję
        if (UserUtilities.getLoggedUser(userRepository).getFavouritesPromotions().contains(promotion)) {
            model.addAttribute("favourite", true);
        }
        model.addAttribute("addedReview",false);
//        if (reviewRepository.findOneByUserIdAndPromotionId(UserUtilities.getLoggedUser(userRepository).getId(), promotion.getId()) != null) {
//            model.addAttribute("addedReview",true);
//        }
        model.addAttribute("promotion", promotion);
        model.addAttribute("review", new Review());

        return "promotion";
    }

    //---------WYŚWIETL LISTE ULUBIONYCH PROMOCJI---------

    @GetMapping("/favouritePromotions")
    public String search(Model model) {
        User user = UserUtilities.getLoggedUser(userRepository);
        List<Promotion> userFavouritePromotions = user.getFavouritesPromotions();
        model.addAttribute("userFavouritePromotions", userFavouritePromotions);
        return "favouritePromotionsList";
    }

    //---------DODAJ RECENZJE DO PROMOCJI-----------------

    @PostMapping("/{promotionId}")
    public String addReviewToPromotion(@PathVariable Long promotionId, @ModelAttribute Review review, BindingResult result){
        if (result.hasErrors()) {
            return "promotion";
        }
        Promotion pr = promotionRepository.getFirstById(promotionId);
        User user = UserUtilities.getLoggedUser(userRepository);
        review.setUser(user);
        reviewRepository.save(review);
        pr.addToReviews(review);
        promotionRepository.save(pr);
        return "redirect:/promotion/" + promotionId;
    }

    //-----------DODAJ PROMOCJĘ DO ULUBIONYCH--------------

    @GetMapping("/addToFavourite/{id}")
    public String addToFavourite(@PathVariable Long id) {

        User user = UserUtilities.getLoggedUser(userRepository);
        Promotion promotion = promotionRepository.getFirstById(id);
        user.addFavouritePromotion(promotion);
        userRepository.save(user);
        return "redirect:/promotion/" + id;
    }

    @GetMapping("/deleteFromFavourite/{id}")
    public String deleteFromFavourite(@PathVariable Long id) {
        User user = UserUtilities.getLoggedUser(userRepository);
        Promotion promotion = promotionRepository.getFirstById(id);
        user.deleteFavouritePromotion(promotion);
        userRepository.save(user);
        return "redirect:/promotion/" + id;
    }

    //----------DODAJ PROMOCJĘ-------------

    @GetMapping("/add")
    public String addPromotion(Model model) {
        Promotion promotion = new Promotion();
        model.addAttribute("promotion", promotion);
        return "promotionAddForm";
    }

    @PostMapping("/add")
    public String addPromotion(@ModelAttribute @Valid Promotion promotion, BindingResult result) {
        if (result.hasErrors()) {
            return "promotionAddForm";
        }
        promotionRepository.save(promotion);
        return "redirect:./search";
    }



























}
