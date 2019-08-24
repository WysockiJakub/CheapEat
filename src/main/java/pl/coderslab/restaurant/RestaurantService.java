package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionService;
import pl.coderslab.review.Review;
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

    public void saveToModelNotes(List<Promotion> promotions, Model model){
        int note1 = 0;
        int note2 = 0;
        int note3 = 0;
        int note4 = 0;
        int note5 = 0;
        for (Promotion p : promotions) {
            for (Review r : p.getReviews()) {
                if (r.getNote() == 1) {
                    note1 += 1;
                } else if (r.getNote() == 2) {
                    note2 += 1;
                } else if (r.getNote() == 3) {
                    note3 += 1;
                } else if (r.getNote() == 4) {
                    note4 += 1;
                } else {
                    note5 += 1;
                }
            }
        }
        model.addAttribute("note1", note1);
        model.addAttribute("note2", note2);
        model.addAttribute("note3", note3);
        model.addAttribute("note4", note4);
        model.addAttribute("note5", note5);
    }

}
