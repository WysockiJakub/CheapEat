package pl.coderslab.contact;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class ContactDao {

    @PersistenceContext
    private EntityManager entityManager;

    public void save(ContactMessage contactMessage) {
        entityManager.persist(contactMessage);
    }

    public void update(ContactMessage contactMessage) {
        entityManager.merge(contactMessage);
    }

    public ContactMessage find(Long id) {
        return entityManager.find(ContactMessage.class, id);
    }

    public void delete(Long id) {
        ContactMessage contactMessage = find(id);
        if (contactMessage != null) {
            entityManager.remove(contactMessage);
        }
    }
}
