package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.utilities.Utils;

import javax.jws.soap.SOAPBinding;
import java.util.List;

@Service
public class PromotionService {

    private PromotionRepository promotionRepository;
    private UserRepository userRepository;

    @Autowired
    public PromotionService(PromotionRepository promotionRepository, UserRepository userRepository) {
        this.promotionRepository = promotionRepository;
        this.userRepository = userRepository;
    }

    public void countPromotionAverageNote(Promotion promotion) {
        if (!promotion.getReviews().isEmpty()) {
            promotion.setAverageNote(Utils.round(promotionRepository.getAverageNoteByPromotionId(promotion.getId()), 2));
        } else {
            promotion.setAverageNote(0);
        }
    }

    public void countPromotionAverageNoteForAllPromotions(List<Promotion> promotions) {
        for (Promotion p : promotions) {
            countPromotionAverageNote(p);
        }
    }

    public void countPromotionSubscription(Promotion promotion) {
        List<User> allUsers = userRepository.findAll();
        int subscription = 0;
        for(User user : allUsers) {
            if (user.getFavouritesPromotions().contains(promotion)) {
                subscription += 1;
            }
        }
        promotion.setSubscription(subscription);
    }

    public int countPromotionSubscriptionsForRestaurant(List<Promotion> promotions) {
        int allRestaurantSubscription = 0;
        countPromotionAverageNoteForAllPromotions(promotions);
        for (Promotion p : promotions) {
            allRestaurantSubscription += p.getSubscription();
        }
        return allRestaurantSubscription;
    }
}
