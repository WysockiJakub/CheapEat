package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.auth.model.LoggedUser;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.auth.service.UserService;
import pl.coderslab.utilities.UserUtilities;

@Controller
@RequestMapping("/test")
public class TestController {

    private UserService userService;
    private UserRepository userRepository;

    @Autowired
    LoggedUser loggedUser;

    @Autowired
    public TestController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

//    @GetMapping("")
//    public String test(Model model) {
////        String username = UserUtilities.getLoggedUser();
////        User user = userService.findByUsername(username);
////        model.addAttribute("user", user);
////        Long id = userRepository.findById(UserUtilities.getLoggedUserId().intValue());
//        User user = UserUtilities.getLoggedUser(userRepository);
//
//        return "dashboard2";
//    }
}
