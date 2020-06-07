package pl.matkoc.material_approval.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "materials")
@Getter
@Setter
@ToString
public class Material extends ParentEntity{

    @Column(nullable = false, unique = true)
    private String materials;
    @Column(nullable = false)
    private String description;
    private String approved;
    private String comments;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getMaterials() {
        return materials;
    }

    public void setMaterials(String materials) {
        this.materials = materials;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getApproved() {
        return approved;
    }

    public void setApproved(String approved) {
        this.approved = approved;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created) {
        this.created = created;
    }

    public LocalDate getUpdated() {
        return updated;
    }

    public void setUpdated(LocalDate updated) {
        this.updated = updated;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }
}
