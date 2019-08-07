package pl.coderslab.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.auth.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
