package pl.coderslab.auth.service;

import pl.coderslab.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}