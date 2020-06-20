package pl.matkoc.material_approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.ProjectDao;
import pl.matkoc.material_approval.domain.model.Project;

@Controller
@RequestMapping("/project")
public class ProjectController {

    private final Logger logger = LoggerFactory.getLogger(getClass());
    private final ProjectDao projectDao;

    public ProjectController(ProjectDao projectDao) {
        this.projectDao = projectDao;
    }

    // metoda wystawiająca formularz
    @GetMapping("/addProject")
    public String procesAddProject(Model model){
        model.addAttribute("project", new Project());
        return "project/addProject";
    }

    // metoda zbierająca dane z formularza
    @PostMapping("/addProject")
    public String processAddProjectPage(Project project){
        projectDao.createProject(project);
        return "redirect:/project/showList";
    }

    @GetMapping("/showList")
    public String listProject(Model model){
        model.addAttribute("project", projectDao.findAllProject());
        return "project/listProject";
    }
}
