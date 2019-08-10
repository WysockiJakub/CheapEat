package pl.coderslab.utilities;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import pl.coderslab.auth.model.LoggedUser;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;

public class UserUtilities {

    public static String getLoggedUsername() {
        String username = null;

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            username = auth.getName();
        }
        return username;
    }

    public static Long getLoggedUserId() {
        Long userId = null;

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            User user = (User)auth.getPrincipal();
            userId = user.getId();
        }
        return userId;
    }

    public static User getLoggedUser(UserRepository userRepository) {
            User user = null;
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if (!(auth instanceof AnonymousAuthenticationToken)) {
                user = userRepository.findByUsername(auth.getName());
            }
            return user;
    }

    public static void convertFromUser(User user, LoggedUser loggedUser) {
        loggedUser.setId(user.getId());
        loggedUser.setUsername(user.getUsername());
    }
}