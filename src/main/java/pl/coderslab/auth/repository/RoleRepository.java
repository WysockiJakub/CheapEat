package pl.coderslab.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.auth.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
}