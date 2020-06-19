package pl.matkoc.material_approval.controller;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.ProjectDao;
import pl.matkoc.material_approval.domain.model.Project;

@Controller
@RequestMapping("/project")
public class ProjectController {

    private final ProjectDao projectDao;

    public ProjectController(ProjectDao projectDao) {
        this.projectDao = projectDao;
    }

    @GetMapping("/addProject")
    public String procesAddProject(Model model){
        model.addAttribute("project", new Project());
        return "project/addProject";
    }

    @PostMapping("/addProject")
    public String processAddProjectPage(@ModelAttribute Project project){
        projectDao.createProject(project);
        return "project/listProject";
    }

    public String prepareListProject(Model model){
        model.addAttribute("project", new Project());
        return "project/listProject";
    }
}
