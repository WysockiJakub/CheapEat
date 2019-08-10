package pl.coderslab.promotion;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantDao;
import pl.coderslab.review.Review;
import pl.coderslab.review.ReviewDao;
import pl.coderslab.utilities.UserUtilities;

import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/promotion")
public class PromotionController {

    private PromotionRepository promotionRepository;
    private PromotionDao promotionDao;
    private UserRepository userRepository;
    private ReviewDao reviewDao;
    private RestaurantDao restaurantDao;

    public PromotionController(PromotionRepository promotionRepository, PromotionDao promotionDao, UserRepository userRepository, ReviewDao reviewDao, RestaurantDao restaurantDao) {
        this.promotionRepository = promotionRepository;
        this.promotionDao = promotionDao;
        this.userRepository = userRepository;
        this.reviewDao = reviewDao;
        this.restaurantDao = restaurantDao;
    }

    @ModelAttribute("restaurants")
    List<Restaurant> restaurants() { return restaurantDao.findAll();}

    //---------WYŚWIETL PROMOCJĘ--------------

    @GetMapping("/{id}")
    public String checkPromotion(@PathVariable Long id, Model model) {
        Promotion promotion = promotionRepository.getFirstById(id);
        model.addAttribute("promotion", promotion);
        model.addAttribute("review", new Review());

        return "promotion";
    }

    //---------DODAJ RECENZJE DO PROMOCJI-----------------

    @PostMapping("/{promotionId}")
    public String addReviewToPromotion(@PathVariable Long promotionId, @ModelAttribute Review review, BindingResult result){
        if (result.hasErrors()) {
            return "promotion";
        }
        Promotion pr = promotionRepository.getFirstById(promotionId);
//        review.setPromotion(pr);
        User user = UserUtilities.getLoggedUser(userRepository);
        //review.setUser(user);
//        reviewDao.save(review);
        pr.addToReviews(review);
        promotionDao.update(pr);
        return "redirect:/";
    }

    //-----------DODAJ PROMOCJĘ DO ULUBIONYCH--------------

    @GetMapping("/addToFavourite/{id}")
    public String addToFavourite(@PathVariable Long id) {

        User user = UserUtilities.getLoggedUser(userRepository);
        Promotion promotion = promotionRepository.getFirstById(id);

        if (user.getFavouritesPromotions().contains(promotion)) {

        } else {
            user.addFavouritePromotion(promotion);
            userRepository.save(user);
            return "redirect:../" + id;
        }
        return null;
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
        promotionDao.save(promotion);
        return "redirect:./search";
    }



























}
