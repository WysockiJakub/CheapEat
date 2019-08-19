package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.utilities.Utils;

import java.util.List;

@Service
public class RestaurantService {

    private RestaurantRepository restaurantRepository;
    private PromotionService promotionService;

    @Autowired
    public RestaurantService(RestaurantRepository restaurantRepository, PromotionService promotionService) {
        this.restaurantRepository = restaurantRepository;
        this.promotionService = promotionService;
    }

    public double countAvgRestaurantNote(Restaurant restaurant) {

        List<Promotion> promotions = restaurant.getPromotions();
        double sumOfPromotionsAvgNote = 0;

        for (Promotion p : promotions){
            promotionService.countPromotionAverageNote(p);
            sumOfPromotionsAvgNote += p.getAverageNote();
        }
        return Utils.round(sumOfPromotionsAvgNote / promotions.size(),2);
    }

    public void countAvgRestaurantNoteForAllRestaurants(List<Restaurant> restaurants) {

        for (Restaurant restaurant : restaurants){

            List<Promotion> promotions = restaurant.getPromotions();
            double sumOfPromotionsAvgNote = 0;

            for (Promotion p : promotions){
                promotionService.countPromotionAverageNote(p);
                p.setAverageNote(Utils.round(sumOfPromotionsAvgNote / promotions.size(),2));
            }
        }
    }
}
