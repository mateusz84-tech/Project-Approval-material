package pl.matkoc.material_approval.domain.dao;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.matkoc.material_approval.domain.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class UserDao {

    private final PasswordEncoder passwordEncoder;
    @PersistenceContext
    private EntityManager entityManager;

    public UserDao(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    public void createUser(User user){
        String password = passwordEncoder.encode((user.getPassword()));
        user.setPassword(password);
        entityManager.persist(user);
    }

    public User readById(Long id){
        return entityManager.find(User.class, id);
    }

    public void update(User user){
        entityManager.merge(user);
    }

    public void delete(User user){
        entityManager.remove(entityManager.contains(user) ?
                user : entityManager.merge(user));
    }
}
