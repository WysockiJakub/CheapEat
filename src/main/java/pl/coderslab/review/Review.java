package pl.coderslab.review;

import org.springframework.lang.Nullable;
import pl.coderslab.auth.model.User;
import pl.coderslab.promotion.Promotion;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Nullable
    private Integer note;

    private String content;

    @ManyToOne
    private User user;

    public Review() {
    }

    public Review(Integer note, String content, User user) {
        this.note = note;
        this.content = content;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getNote() {
        return note;
    }

    public void setNote(Integer note) {
        this.note = note;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
