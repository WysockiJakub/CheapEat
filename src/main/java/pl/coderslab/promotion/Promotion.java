package pl.coderslab.promotion;

import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.restaurant.Restaurant;
import pl.coderslab.review.Review;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.DayOfWeek;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "promotion")
public class Promotion {

    //---------------ZMIENNE------------------

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(max = 150)
    private String name;

    @NotBlank
    @Size(max = 500)
    private String description;

    @NotBlank
    private String category;

    @NotBlank
    private double price;

    @Transient
    private double averageNote;

    @NotBlank
    private DayOfWeek dayOfWeek;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Restaurant restaurant;

    @OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.DETACH})
    private List<Review> reviews = new ArrayList<>();

    //----------------METODY----------------------

    public Promotion() {
    }

    public Promotion(String name, String description, double price, DayOfWeek dayOfWeek, Restaurant restaurant, List<Review> reviews) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.dayOfWeek = dayOfWeek;
        this.restaurant = restaurant;
        this.reviews = reviews;
    }

    @Override
    public boolean equals(Object o) {
        Promotion promotion = (Promotion) o;
        return this.getId() == promotion.getId();
    }

    public void addToReviews(Review review) {
        reviews.add(review);
    }


    //------------GETTERY I SETTERY----------------

    @Override
    public int hashCode() {
        return Objects.hash(id);
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

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public double getAverageNote() {
        return averageNote;
    }

    public void setAverageNote(double averageNote) {
        this.averageNote = averageNote;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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
