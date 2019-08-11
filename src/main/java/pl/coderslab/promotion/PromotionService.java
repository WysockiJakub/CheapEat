package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.utilities.Utils;

@Service
public class PromotionService {

    private PromotionRepository promotionRepository;

    @Autowired
    public PromotionService(PromotionRepository promotionRepository) {
        this.promotionRepository = promotionRepository;
    }

    public void countPromotionAverageNote(Promotion promotion) {
        if (!promotion.getReviews().isEmpty()) {
            promotion.setAverageNote(Utils.round(promotionRepository.getAverageNoteByPromotionId(promotion.getId()), 2));
        } else {
            promotion.setAverageNote(0);
        }
    }
}
