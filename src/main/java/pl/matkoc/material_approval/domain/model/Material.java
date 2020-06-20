package pl.matkoc.material_approval.domain.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "materials")
@Getter
@Setter
@ToString @EqualsAndHashCode(callSuper = true)
public class Material extends ParentEntity{


    @Column(nullable = false, unique = true)
    private String materials;
    @Column(nullable = true)
    private String description;
    private String approved;
    private String comments;
    private String trade;
    @Column(name = "created_on")
    private LocalDate created;
    @Column(name = "updated_on")
    private LocalDate updated;
    private String link;


    @PrePersist
    public void prePersist(){
        created = LocalDate.now();
    }

    @PreUpdate
    public void preUpdate(){
        updated = LocalDate.now();
    }

    @ManyToOne
    private User user;

    @ManyToOne
    private Project project;

    public Material() {
    }
}
