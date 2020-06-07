package pl.matkoc.material_approval.domain.dao;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.matkoc.material_approval.domain.model.Inspector;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class InspectorDao {

    private final PasswordEncoder passwordEncoder;

    @PersistenceContext
    private EntityManager entityManager;

    public InspectorDao(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    public void createInsp(Inspector inspector){
        String password = passwordEncoder.encode(inspector.getPassword());
        inspector.setPassword(password);
        entityManager.persist(inspector);

    }

    public Inspector readById(Long id){
        return entityManager.find(Inspector.class, id);
    }

    public void update(Inspector inspector){
        entityManager.merge(inspector);
    }

    public void delete(Inspector inspector){
        entityManager.remove(entityManager.contains(inspector) ?
                inspector : entityManager.merge(inspector));
    }


}
