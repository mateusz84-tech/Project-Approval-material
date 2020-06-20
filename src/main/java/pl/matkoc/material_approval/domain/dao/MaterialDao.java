package pl.matkoc.material_approval.domain.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.matkoc.material_approval.domain.model.Material;
import pl.matkoc.material_approval.domain.model.Project;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
@Transactional
public class MaterialDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void createMaterial(Material material){
        entityManager.persist(material);
    }

    public Material readById(Long id){
        return entityManager.find(Material.class, id);
    }

    public void update(Material material){
        entityManager.merge(material);
    }

    public void delete(Material material){
        entityManager.remove(entityManager.contains(material) ?
                material : entityManager.merge(material));
    }

    public List<Material> findAll(){
        TypedQuery<Material> query = entityManager.createQuery("SELECT m FROM Material m",Material.class);
        List<Material> materialList = query.getResultList();
        return materialList;
    }

    public List<Material> findAllWithTradeBuilding(){
        TypedQuery<Material> query = entityManager.createQuery("SELECT m FROM Material m WHERE m.trade =: trade", Material.class );
        query.setParameter("trade", "Budowlana" );
        List<Material> materialList = query.getResultList();
        return materialList;
    }

    public List<Material> findAllWithTradeSanitary(){
        TypedQuery<Material> query = entityManager.createQuery("SELECT m FROM Material m WHERE m.trade =: trade", Material.class);
        query.setParameter("trade", "Sanitarna");
        List<Material> sanitaryList = query.getResultList();
        return sanitaryList;
     }

     public List<Material> findAllWithTradeElectrical(){
        TypedQuery<Material> query = entityManager.createQuery("SELECT m FROM Material m WHERE m.trade =: trade",Material.class);
        query.setParameter("trade", "Elektryczna");
        List<Material> electricalList = query.getResultList();
        return electricalList;
     }

}
