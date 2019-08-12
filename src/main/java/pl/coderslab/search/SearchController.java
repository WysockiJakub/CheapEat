package pl.coderslab.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchController {

    private PromotionRepository promotionRepository;

    @Autowired
    public SearchController(PromotionRepository promotionRepository) {
        this.promotionRepository = promotionRepository;
    }

    @GetMapping("")
    public String search(Model model) {
        List<Promotion> list = promotionRepository.findAll();
        model.addAttribute("list", list);
        return "search";
    }

    @GetMapping("/today")
    public String searchByToday(Model model) {
        LocalDate date = LocalDate.now();
        DayOfWeek dow = date.getDayOfWeek();
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dow);
        model.addAttribute("list", list);
        return "search";
    }

    @GetMapping("/day/{day}")
    public String searchByDayOfWeek(@PathVariable int day, Model model) {
        DayOfWeek dayOfWeek = DayOfWeek.of(day);
        List<Promotion> list = promotionRepository.findAllByDayOfWeek(dayOfWeek);
        model.addAttribute("list", list);
        return "search";
    }

    @GetMapping("/{category}")
    public String searchByCategory(@PathVariable String category, Model model) {
        List<Promotion> list = promotionRepository.findAllByCategory(category);
        model.addAttribute("list", list);
        return "search";
    }
}
