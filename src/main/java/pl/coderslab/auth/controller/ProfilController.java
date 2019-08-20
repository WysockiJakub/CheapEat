package pl.coderslab.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.model.UserDetails;
import pl.coderslab.auth.repository.UserDetailsRepository;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.utilities.UserUtilities;

@Controller
@RequestMapping("/user/profil")
public class ProfilController {

    private UserService userService;
    private UserRepository userRepository;
    private UserDetailsRepository userDetailsRepository;

    @Autowired
    public ProfilController(UserService userService, UserRepository userRepository, UserDetailsRepository userDetailsRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
        this.userDetailsRepository = userDetailsRepository;
    }

    @GetMapping("")
    public String showUserProfilePage(Model model) {
        UserDetails userDetails = UserUtilities.getLoggedUser(userRepository).getUserDetails();
        model.addAttribute("userDetails", userDetails);
        return "profil";
    }

    @GetMapping("/edit")
    public String editUserProfile(Model model){

        UserDetails userDetails = UserUtilities.getLoggedUser(userRepository).getUserDetails();
        model.addAttribute("userDetails", userDetails);

        return "editUserDetails";
    }

    @PostMapping("/edit")
    public String editUserProfilePost(@ModelAttribute UserDetails userDetails, BindingResult result) {
        if (result.hasErrors()) {
            return "editUserDetails";
        }
        userDetails.setId(UserUtilities.getLoggedUser(userRepository).getUserDetails().getId());
        userDetailsRepository.save(userDetails);
        return "redirect:/user/profil";
    }
}
