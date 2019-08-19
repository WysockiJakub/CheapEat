package pl.coderslab.homepage.about;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/about")
public class AboutController {

    @GetMapping("")
    public String about() {
        return "about";
    }
}
