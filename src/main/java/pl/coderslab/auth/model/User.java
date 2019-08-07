package pl.coderslab.auth.model;

import pl.coderslab.promotion.Promotion;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    private String password;

    private String email;

    private String address;



    @Transient
    private String passwordConfirm;

    @ManyToMany
    private Set<Role> roles;

    @OneToMany
    private List<Promotion> favouritesPromotions = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public List<Promotion> getFavouritesPromotions() {
        return favouritesPromotions;
    }

    public void setFavouritesPromotions(List<Promotion> favouritesPromotions) {
        this.favouritesPromotions = favouritesPromotions;
    }
}
