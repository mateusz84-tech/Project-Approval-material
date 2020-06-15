package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.matkoc.material_approval.domain.dao.InspectorDao;
import pl.matkoc.material_approval.domain.dao.MaterialDao;
import pl.matkoc.material_approval.domain.model.Material;


@Controller
@RequestMapping("/")
public class InspectorController {

    private final InspectorDao inspectorDao;
    private final MaterialDao materialDao;

    public InspectorController(InspectorDao inspectorDao, MaterialDao materialDao) {
        this.inspectorDao = inspectorDao;
        this.materialDao = materialDao;
    }

    @GetMapping("/inspector/action")
    public String actionInsp(){
        return "inspector/action";
    }

    // wyświetlanie listy materiałów
    @GetMapping("/listMaterial")
    public String showListMaterialToConfirm(Model model){
        model.addAttribute("confirmList", materialDao.findAll());
        return "inspector/editList";
    }

    // zatwierdzenie materiału
    @GetMapping("/inspector/confirmMaterial")
    public String prepareConfirmedMaterialList(Model model, @RequestParam long id){
        Material material = materialDao.readById(id);
        model.addAttribute("confirmList", material);
        return "inspector/confirmMaterial";
    }
}
