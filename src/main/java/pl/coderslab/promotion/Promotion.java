package pl.coderslab.promotion;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.omg.CORBA.PUBLIC_MEMBER;
import pl.coderslab.auth.model.User;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.review.Review;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.DayOfWeek;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "promotion")
public class Promotion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(max = 150)
    private String name;

    @NotBlank
    @Size(max = 500)
    private String description;

    private double price;

    @NotBlank
    private DayOfWeek dayOfWeek;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Restaurant restaurant;

//    @ManyToMany
//    private List<User> users = new ArrayList<>();

    @OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.DETACH})
    private List<Review> reviews = new ArrayList<>();

    public Promotion() {
    }

    public Promotion(String name, String description, double price, DayOfWeek dayOfWeek, Restaurant restaurant, List<User> users, List<Review> reviews) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.dayOfWeek = dayOfWeek;
        this.restaurant = restaurant;
//        this.users = users;
        this.reviews = reviews;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public DayOfWeek getDayOfWeek() {
        return dayOfWeek;
    }

    public void setDayOfWeek(DayOfWeek dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }

    public Restaurant getRestaurant() {
        return restaurant;
    }

    public void setRestaurant(Restaurant restaurant) {
        this.restaurant = restaurant;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

//    public List<User> getUsers() {
//        return users;
//    }
//
//    public void setUsers(List<User> users) {
//        this.users = users;
//    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public void addToReviews(Review review) {
        reviews.add(review);
    }

    @Override
    public String toString() {
        return "Promotion{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", dayOfWeek=" + dayOfWeek +
                ", restaurant=" + restaurant+
                '}';
    }
}
