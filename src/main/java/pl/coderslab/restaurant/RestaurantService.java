package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.utilities.Utils;

import java.util.List;

@Service
public class RestaurantService {

    private PromotionService promotionService;

    @Autowired
    public RestaurantService(PromotionService promotionService) {
        this.promotionService = promotionService;
    }

    public void countAvgRestaurantNote(Restaurant restaurant) {

        List<Promotion> promotions = restaurant.getPromotions();
        double sumOfPromotionsAvgNote = 0;
        int promotionsWithReviews = 0;

        for (Promotion p : promotions) {
            if (!p.getReviews().isEmpty()) {
                promotionService.countPromotionAverageNote(p);
                sumOfPromotionsAvgNote += p.getAverageNote();
                promotionsWithReviews += 1;
            }
        }
        if (sumOfPromotionsAvgNote != 0) {
            restaurant.setAvgNote(Utils.round(sumOfPromotionsAvgNote / promotionsWithReviews, 2));
        }
    }

    public void countAvgRestaurantNoteForAllRestaurants(List<Restaurant> restaurants) {
        for (Restaurant restaurant : restaurants){
            countAvgRestaurantNote(restaurant);
        }
    }
}
