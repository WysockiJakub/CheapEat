package pl.coderslab.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionDao;
import pl.coderslab.promotion.PromotionRepository;

import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchController {

    private PromotionRepository promotionRepository;


    @Autowired
    public SearchController(PromotionRepository promotionRepository, PromotionDao promotionDao) {
        this.promotionRepository = promotionRepository;
    }

    @GetMapping("/")
    public String search(Model model) {
        List<Promotion> list = promotionRepository.findAll();
        model.addAttribute("list", list);
        return "search";
    }
}
