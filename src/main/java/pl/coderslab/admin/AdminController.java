package pl.coderslab.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.auth.model.Role;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.RoleRepository;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.promotion.PromotionRepository;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.restaurant.RestaurantRepository;
import pl.coderslab.review.ReviewRepository;
import pl.coderslab.utilities.UserUtilities;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Set;

@Controller
@SessionAttributes({"user"})
@RequestMapping("/admin")
public class AdminController {

    private BCryptPasswordEncoder bCryptPasswordEncoder;
    private RestaurantRepository restaurantRepository;
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private PromotionRepository promotionRepository;
    private ReviewRepository reviewRepository;

    @Autowired
    public AdminController(BCryptPasswordEncoder bCryptPasswordEncoder, RestaurantRepository restaurantRepository, UserRepository userRepository, RoleRepository roleRepository, PromotionRepository promotionRepository, ReviewRepository reviewRepository) {
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.restaurantRepository = restaurantRepository;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.promotionRepository = promotionRepository;
        this.reviewRepository = reviewRepository;
    }

    @GetMapping("/dashboard")
    public String adminDashboard(Model model){
        int allPromotions = promotionRepository.findAll().size();
        model.addAttribute("allPromotions", allPromotions);

        int allRestaurants = restaurantRepository.findAll().size();
        model.addAttribute("allRestaurants", allRestaurants);

        int allReviews = reviewRepository.findAll().size();
        if (allReviews != 0) {
            model.addAttribute("allReviews", allReviews);
        } else {
            model.addAttribute("allReviews", 0);
        }

        int allUsers = UserUtilities.countUsers(userRepository) - 1;
        model.addAttribute("allUsers",allUsers);


        return "admin/adminDashboard";
    }

    @GetMapping("/restaurant/add/user")
    public String addRestaurantUser(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "admin/addUserForm";
    }

    @PostMapping("/restaurant/add/user")
    public String addRestaurantUserPost(@ModelAttribute User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/addUserForm";
        }
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Role role = roleRepository.findById(3L).get();
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        user.setRoles(roles);
        model.addAttribute("user", user);
        return "redirect:/admin/restaurant/add/restaurant";

    }

    @GetMapping("/restaurant/add/restaurant")
    public String addRestaurant(Model model) {
        Restaurant restaurant = new Restaurant();
        model.addAttribute("restaurant", restaurant);
        return "admin/addRestaurantForm";
    }

    @PostMapping("/restaurant/add/restaurant")
    public String addRestaurantPost(@ModelAttribute Restaurant restaurant, BindingResult result, HttpSession sess) {
        if (result.hasErrors()) {
            return "admin/addRestaurantForm";
        }
        User user = (User)sess.getAttribute("user");
        restaurantRepository.save(restaurant);
        Restaurant restaurant1 = restaurantRepository.findByName(restaurant.getName());
        user.setRestaurant(restaurant1);
        userRepository.save(user);
        return "admin/success";
    }
}
