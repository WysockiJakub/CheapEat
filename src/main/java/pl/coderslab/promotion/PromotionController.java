package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/promotion")
public class PromotionController {


    private PromotionDao promotionDao;

    @Autowired
    public PromotionController(PromotionDao promotionDao) {
        this.promotionDao = promotionDao;
    }

    @GetMapping("/{id}")
    public String checkPromotion(@PathVariable Long id, Model model) {
        Promotion promotion = promotionDao.find(id);
        model.addAttribute("promotion", promotion);
        return "promotion";
    }
}
