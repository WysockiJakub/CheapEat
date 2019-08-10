package pl.coderslab.restaurant;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class RestaurantDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void save(Restaurant restaurant) {
        entityManager.persist(restaurant);
    }

    public void update(Restaurant restaurant) {
        entityManager.merge(restaurant);
    }

    public Restaurant find(Long id) {
        return entityManager.find(Restaurant.class, id);
    }

    public void delete(Long id) {
        Restaurant restaurant = find(id);
        if (restaurant != null) {
            entityManager.remove(restaurant);
        }
    }

    public List<Restaurant> findAll() {
        Query query = entityManager.createQuery("select r from Restaurant r");
        List restaurants = query.getResultList();
        return restaurants;
    }
}
