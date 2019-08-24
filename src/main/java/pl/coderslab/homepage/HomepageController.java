package pl.coderslab.homepage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.review.ReviewRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HomepageController {

    private PromotionRepository promotionRepository;
    private RestaurantRepository restaurantRepository;
    private ReviewRepository reviewRepository;

    @Autowired
    public HomepageController(PromotionRepository promotionRepository, RestaurantRepository restaurantRepository, ReviewRepository reviewRepository) {
        this.promotionRepository = promotionRepository;
        this.restaurantRepository = restaurantRepository;
        this.reviewRepository = reviewRepository;
    }

    @GetMapping("/user/dashboard")
    public String userDashboard(Model model) {
        int allPromotions = promotionRepository.findAll().size();
        model.addAttribute("allPromotions", allPromotions);

        int allRestaurants = restaurantRepository.findAll().size();
        model.addAttribute("allRestaurants", allRestaurants);

        int allReviews = reviewRepository.findAll().size();
        if (allReviews != 0) {
            model.addAttribute("allReviews", allReviews);
        } else {
            model.addAttribute("allReviews", 0);
        }



        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        List<Promotion> todayPromotions = promotionRepository.findAllByDayOfWeek(dow);
        Collections.shuffle(todayPromotions);

        List<Promotion> first9TodayPromotions = todayPromotions.stream()
                .limit(9)
                .collect(Collectors.toList());

        Promotion firstPromotion = todayPromotions.get(todayPromotions.size() - 1);
        model.addAttribute("firstTodayPromotion", firstPromotion);
        model.addAttribute("todayPromotions", first9TodayPromotions);

        return "dashboard2";
    }
}
