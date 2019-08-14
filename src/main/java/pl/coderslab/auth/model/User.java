package pl.coderslab.auth.model;

import org.springframework.lang.Nullable;
import pl.coderslab.promotion.Promotion;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.review.Review;

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

    @Column(unique = true)
    private String username;

    private String password;

    @Nullable
    private String email;
    @Nullable
    private String address;
    @Nullable
    private String dateOfBirth;

    @Transient
    private String passwordConfirm;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Role> roles;

    @ManyToMany(fetch = FetchType.EAGER)
    private List<Promotion> favouritesPromotions = new ArrayList<>();

    @OneToOne(fetch = FetchType.EAGER)
    private Restaurant restaurant;                      //jesli użytkownik jest restauratorem to ma jedna restaurację

//    @OneToMany
//    private List<Review> reviews = new ArrayList<>();

    //--------------METODY-----------------------------


    public void addFavouritePromotion(Promotion promotion) {
        favouritesPromotions.add(promotion);
    }

    public void deleteFavouritePromotion(Promotion promotion) { favouritesPromotions.remove(promotion); }



    //--------------GETTERY I SETTERY---------------------

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

    @Nullable
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Nullable
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Nullable
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Restaurant getRestaurant() {
        return restaurant;
    }

    public void setRestaurant(Restaurant restaurant) {
        this.restaurant = restaurant;
    }
}
