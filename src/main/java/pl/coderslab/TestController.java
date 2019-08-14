package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.auth.model.LoggedUser;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.utilities.UserUtilities;

@Controller
@RequestMapping("/test")
public class TestController {

    private UserService userService;
    private UserRepository userRepository;
    private PromotionRepository promotionRepository;

    @Autowired
    LoggedUser loggedUser;

    @Autowired
    public TestController(UserService userService, UserRepository userRepository, PromotionRepository promotionRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.promotionRepository = promotionRepository;
    }

    @GetMapping("")
    public String test() {

        return "dashboard2";
    }
}
