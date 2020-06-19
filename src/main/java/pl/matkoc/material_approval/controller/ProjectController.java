package pl.matkoc.material_approval.controller;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
    public String processAddProjectPage(Project project){
        projectDao.createProject(project);
        return "redirect:/project/listProject";
    }

    public String prepareListProject(Model model){
        model.addAttribute("project", new Project());
        return "project/listProject";
    }
}
