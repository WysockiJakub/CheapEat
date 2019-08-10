package pl.coderslab.review;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class ReviewDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void save(Review review) {
        entityManager.persist(review);
    }

    public void update(Review review) {
        entityManager.merge(review);
    }

    public Review find(Long id) {
        return entityManager.find(Review.class, id);
    }

    public void delete(Long id) {
        Review review = find(id);
        if (review != null) {
            entityManager.remove(review);
        }
    }
}
