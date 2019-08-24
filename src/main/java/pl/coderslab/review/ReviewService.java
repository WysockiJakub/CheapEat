package pl.coderslab.review;

import org.springframework.stereotype.Service;
import pl.coderslab.promotion.Promotion;

import java.util.List;

@Service
public class ReviewService {

    public int countRestaurantAllReviews(List<Promotion> promotionList) {
        int reviews = 0;
        for (Promotion p : promotionList) {
            reviews += p.getReviews().size();
        }
        return reviews;
    }
}
