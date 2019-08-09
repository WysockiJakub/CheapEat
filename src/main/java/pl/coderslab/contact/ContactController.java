package pl.coderslab.contact;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.utilities.UserUtilities;

@Controller
@RequestMapping("/contact")
public class ContactController {

    private ContactDao contactDao;
    private UserRepository userRepository;

    public ContactController(pl.coderslab.contact.ContactDao contactDao, UserRepository userRepository) {
        this.contactDao = contactDao;
        this.userRepository = userRepository;
    }

    @GetMapping("")
    public String sendMessage(Model model){
        ContactMessage contactMessage = new ContactMessage();
        model.addAttribute("contactMessage", contactMessage);
        return "contact";
    }

    @PostMapping("")
    public String sendMessagePost(@ModelAttribute ContactMessage contactMessage, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "contact";
        }
        contactMessage.setUsername(UserUtilities.getLoggedUser());
        String email = userRepository.findByUsername(UserUtilities.getLoggedUser()).getEmail();
        contactMessage.setUserEmail(email);
        contactDao.save(contactMessage);
        model.addAttribute("sended", "Dziekujemy za kontakt. Wiadomośc została wysłana");
        return"contact";
    }

}
