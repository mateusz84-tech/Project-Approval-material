package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.InspectorDao;
import pl.matkoc.material_approval.domain.dao.UserDao;
import pl.matkoc.material_approval.domain.model.Inspector;
import pl.matkoc.material_approval.domain.model.User;

@Controller
@RequestMapping("/")
public class HomeController {

    private final InspectorDao inspectorDao;
    private final UserDao userDao;

    public HomeController(InspectorDao inspectorDao, UserDao userDao) {
        this.inspectorDao = inspectorDao;
        this.userDao = userDao;
    }

    @GetMapping
    public String homePage(){
        return "mainPage";
    }

    // rejestracja inspektorów
    @GetMapping("/register-insp")
    public String prepareRegisterInsp(Model model){
        model.addAttribute("insp", new Inspector());
        return "register/inspector";
    }
    @PostMapping("/register-insp")
    public String processLoginInspector(Inspector inspector){
        inspectorDao.createInsp(inspector);
        return "redirect:/inspector/action";
    }

    // rejestracja użytkowników
    @GetMapping("/register-inz")
    public String prepareRegisterInz(Model model){
        model.addAttribute("inz", new User());
        return "register/user";
    }

    @PostMapping("/register-inz")
    public String processLoginUser(User user){
        userDao.createUser(user);
        return "redirect:/user/action";
    }

}
