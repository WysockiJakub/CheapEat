package pl.coderslab.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.service.SecurityService;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.auth.validator.UserValidator;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private PromotionRepository promotionRepository;

    @Autowired
    private RestaurantRepository restaurantRepository;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "register";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "register";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/user/dashboard";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

//    @GetMapping("/user/dashboard")
//    public String welcome(Model model) {
////        int allPromotions = promotionRepository.findAll().size();
////        model.addAttribute("allPromotions", allPromotions);
////
////        int allRestaurants = restaurantRepository.findAll().size();
////        model.addAttribute("allRestaurants", allRestaurants);
////
////        LocalDate date = LocalDate.now();
////        DayOfWeek dow = date.getDayOfWeek();
////        List<Promotion> todayPromotions = promotionRepository.findAllByDayOfWeek(dow);
////        model.addAttribute("todayPromotions", todayPromotions);
//        return "dashboard2";
//    }
}