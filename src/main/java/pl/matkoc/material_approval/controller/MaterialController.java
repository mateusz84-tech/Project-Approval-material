package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.MaterialDao;
import pl.matkoc.material_approval.domain.model.Material;


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

    // przekierowanie do akcji kontrolera z listą materiałów
    @PostMapping("/addMaterial")
    public String processAddMaterialPage(Material material){
        materialDao.createMaterial(material);
        return "redirect:/list";
    }

    // akcja usuwająca materiał z listy
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

    // akcja modyfikująca materiał
    @GetMapping("/edit")
    public String prepareProcesEditMaterial(Model model, @RequestParam Long id){
        Material material = materialDao.readById(id);
        model.addAttribute("materials", material);
        return "material/edit";
    }

    @PostMapping("/edit")
    public String processEditMaterial(Material material){
        Material original = materialDao.readById(material.getId());

        original.setMaterials(material.getMaterials());
        original.setDescription(material.getDescription());
        original.setLink(material.getLink());

        materialDao.update(original);
        return "redirect:list";
    }

    // akcja zwraca listę materiałów
    @GetMapping("/list")
    public String materialList(Model model){
        model.addAttribute("materials", materialDao.findAll());
        return "material/showList";
    }
}
