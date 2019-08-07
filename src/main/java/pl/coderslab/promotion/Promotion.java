package pl.coderslab.promotion;

import pl.coderslab.auth.model.User;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.review.Review;

import javax.persistence.*;
import java.time.DayOfWeek;
import java.util.HashMap;
import java.util.HashSet;

@Entity
@Table(name = "promotion")
public class Promotion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String description;
    private double price;
    private DayOfWeek dayOfWeek;

    @ManyToOne(fetch = FetchType.EAGER)
    private Restaurant restaurant;



    public Promotion() {
    }

    public Promotion(String name, String description, double price, DayOfWeek dayOfWeek, Restaurant restaurant) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.dayOfWeek = dayOfWeek;
        this.restaurant = restaurant;
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
}
