package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.utilities.UserUtilities;

import java.util.List;


@Controller
@RequestMapping("/promotion")
public class PromotionController {



    private PromotionRepository promotionRepository;
    private PromotionDao promotionDao;
    private UserRepository userRepository;

    @Autowired
    public PromotionController(PromotionRepository promotionRepository, PromotionDao promotionDao, UserRepository userRepository) {
        this.promotionRepository = promotionRepository;
        this.promotionDao = promotionDao;
        this.userRepository = userRepository;
    }

    @GetMapping("/{id}")
    public String checkPromotion(@PathVariable Long id, Model model) {
        Promotion promotion = promotionRepository.getFirstById(id);
        model.addAttribute("promotion", promotion);
        return "promotion";
    }

    @GetMapping("/addToFavourite/{id}")
    public String addToFavourite(@PathVariable Long id) {
        Promotion promotion = promotionRepository.getFirstById(id);
        Long userId = userRepository.findByUsername(UserUtilities.getLoggedUser()).getId();
        User user = userRepository.getOne(userId);
        List<Promotion> favouritePromotions = user.getFavouritesPromotions();
        favouritePromotions.add(promotion);
        userRepository.updateFavouritePromotions(favouritePromotions, userId);
        return "redirect:../" + id;
    }

}
