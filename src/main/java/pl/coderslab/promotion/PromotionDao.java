package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.utilities.UserUtilities;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
@Transactional
public class PromotionDao {

    @PersistenceContext
    private EntityManager entityManager;

    private UserRepository userRepository;

    @Autowired
    public PromotionDao(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

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

    public void addToFavourite(List<Promotion> favouritePromotions, Long userId) {
        userRepository.updateFavouritePromotions(favouritePromotions, userId);
    }

}