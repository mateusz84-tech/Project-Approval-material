package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.matkoc.material_approval.domain.dao.MaterialDao;
import pl.matkoc.material_approval.domain.model.Material;

import java.util.List;

@Controller
@RequestMapping("/")
public class MaterialController {

    private final MaterialDao materialDao;

    public MaterialController(MaterialDao materialDao) {
        this.materialDao = materialDao;
    }

    @GetMapping("/addMaterial")
    public String prepareAddMaterialPage(Model model){
        model.addAttribute("material", new Material());
        return "material/addMaterial";
    }

    @PostMapping("/addMaterial")
    @ResponseBody
    public String processAddMaterialPage(Material material){
        materialDao.createMaterial(material);
        return "Dodano materiał do spisu.";
    }

    @GetMapping("/deleteMaterial")
    public String prepareDeleteMaterialPage(Model model){
        model.addAttribute("material", new Material());
        return "material/delete";
    }
    @PostMapping("/deleteMaterial")
    @ResponseBody
    public String processDeleteMaterialPage(Material material){
        materialDao.delete(material);
        return "Usunięto materiał z listy";
    }

    @GetMapping("/list")
    public String materialList(Model model){
        model.addAttribute("materials", materialDao.findAll());
        return "material/showList";
    }
}
