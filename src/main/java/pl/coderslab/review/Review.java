package pl.coderslab.review;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import pl.coderslab.auth.model.User;
import pl.coderslab.promotion.Promotion;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Nullable
    private Integer note;

    private String content;

    private String username;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Column(name = "created_on")
    private LocalDateTime created;

//    @ManyToOne
//    private User user;

    public Review() {
    }

    public Review(Integer note, String content, User user, String username) {
        this.note = note;
        this.content = content;
//        this.user = user;
        this.username = username;
    }

    @PrePersist
    public void prePersist() {
        created = LocalDateTime.now();
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
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

//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
