package pl.coderslab.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.utilities.UserUtilities;

@Controller("/profil")
public class ProfilController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showUserProfilePage(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findByUsername(username);
        model.addAttribute("user", user)
        return "profil";
    }
}
