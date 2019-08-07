package pl.coderslab.promotion;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class PromotionDao {

    @PersistenceContext
    EntityManager entityManager;

    public void save(Promotion promotion) {
        entityManager.persist(promotion);
    }

    public void update(Promotion promotion) {
        entityManager.merge(promotion);
    }

    public Promotion find(Long id) {
        return entityManager.find(Promotion.class, id);
    }

    public void delete(Long id) {
        Promotion promotion = find(id);
        if (promotion != null) {
            entityManager.remove(promotion);
        }
    }
}
