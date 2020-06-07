package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.UserDao;
import pl.matkoc.material_approval.domain.model.User;

@Controller
@RequestMapping("/")
public class UserController {

    private final UserDao userDao;

    public UserController(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/user/action")
    public String actionUser(){
        return "user/action";
    }

    @GetMapping("/add")
    public String prepareAddUserPage(Model model){
        model.addAttribute("user", new User());
        return "user/addUser";
    }

    @PostMapping("/add")
    @ResponseBody
    public String processAddUserPage(User user){
        userDao.createUser(user);
        return "Dodano użytkownika";
    }



}
