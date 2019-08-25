package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.review.ReviewService;

import java.util.List;

@Controller
@RequestMapping("/user/restaurant")
public class RestaurantController {

    private RestaurantRepository restaurantRepository;
    private RestaurantService restaurantService;
    private PromotionService promotionService;
    private ReviewService reviewService;

    @Autowired
    public RestaurantController(RestaurantRepository restaurantRepository, RestaurantService restaurantService, PromotionService promotionService, ReviewService reviewService) {
        this.restaurantRepository = restaurantRepository;
        this.restaurantService = restaurantService;
        this.promotionService = promotionService;
        this.reviewService = reviewService;
    }

    @GetMapping("/{id}/info")
    public String checkRestaurant(@PathVariable Long id, Model model) {
        Restaurant restaurant = restaurantRepository.findById(id).get();
        restaurantService.countAvgRestaurantNote(restaurant);
        model.addAttribute("restaurant", restaurant);

        List<Promotion> promotions = restaurant.getPromotions();
        model.addAttribute("promotions", promotions);

        int subscriptions = promotionService.countPromotionSubscriptionsForRestaurant(promotions);
        model.addAttribute("subscriptions", subscriptions);

        int allReviews = reviewService.countRestaurantAllReviews(promotions);
        model.addAttribute("allReviews", allReviews);
        return "restaurant/restaurantInfo";
    }

    @GetMapping("/{id}/promotions")
    public String checkRestaurantPromotions(@PathVariable Long id, Model model) {
        Restaurant restaurant = restaurantRepository.findById(id).get();
        restaurantService.countAvgRestaurantNote(restaurant);
        model.addAttribute("restaurant", restaurant);

        List<Promotion> promotions = restaurant.getPromotions();
        model.addAttribute("promotions", promotions);

        int subscriptions = promotionService.countPromotionSubscriptionsForRestaurant(promotions);
        model.addAttribute("subscriptions", subscriptions);

        int allReviews = reviewService.countRestaurantAllReviews(promotions);
        model.addAttribute("allReviews", allReviews);

        return "restaurant/restaurantPromotions";
    }
}
