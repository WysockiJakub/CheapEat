package pl.coderslab.review;

import pl.coderslab.promotion.Promotion;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer note;

    private String content;

    @ManyToOne
    private Promotion promotion;







}
