package pl.coderslab.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.utilities.UserUtilities;

@Controller
@RequestMapping("/profil")
public class ProfilController {

    private UserService userService;
    private UserRepository userRepository;

    @Autowired
    public ProfilController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String showUserProfilePage(Model model) {
        User user = UserUtilities.getLoggedUser(userRepository);
        model.addAttribute("user", user);
        return "profil";
    }
}
