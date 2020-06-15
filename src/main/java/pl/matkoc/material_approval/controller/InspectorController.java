package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.matkoc.material_approval.domain.dao.InspectorDao;


@Controller
@RequestMapping("/")
public class InspectorController {

    private final InspectorDao inspectorDao;

    public InspectorController(InspectorDao inspectorDao) {
        this.inspectorDao = inspectorDao;
    }

    @GetMapping("/inspector/action")
    public String actionInsp(){
        return "inspector/action";
    }
}
