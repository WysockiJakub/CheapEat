package pl.coderslab.review;


import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, Long> {

//    Review findOneByUserIdAndPromotionId(Long userId, Long promotionId);

}
