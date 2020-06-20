package pl.matkoc.material_approval.domain.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "projects")
@Getter
@Setter
@ToString @EqualsAndHashCode(callSuper = false)
public class Project extends ParentEntity{

    @Column(nullable = false, unique = true)
    private Integer number;
    @Column(nullable = false, unique = true)
    private String name;

    @OneToMany(mappedBy = "project")
    private List<Material> materialsList = new ArrayList<>();

}
