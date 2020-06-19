package pl.matkoc.material_approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.matkoc.material_approval.domain.dao.MaterialDao;
import pl.matkoc.material_approval.domain.model.Material;


@Controller
@RequestMapping("/material")
public class MaterialController {

    private final MaterialDao materialDao;

    public MaterialController(MaterialDao materialDao) {
        this.materialDao = materialDao;
    }

    @GetMapping("/add")
    public String prepareAddMaterial(Model model){
        model.addAttribute("materials", new Material());
        return "material/addMaterial";
    }

    @PostMapping("/add")
    public String procesAddMaterial(Material material){
        materialDao.createMaterial(material);
        return "redirect:/material/list";
    }

    // edycja materiału
    @GetMapping("/edit")
    public String prepareEditMaterial(Model model, @RequestParam Long id){
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

        materialDao.update(material);
        return "redirect:/material/list";
    }

    @GetMapping("/delete")
    public String prepareDeleteMaterial(Model model,
                                        @RequestParam Long id){
        Material material = materialDao.readById(id);
        model.addAttribute("materials", material);
        return "material/delete";
    }
    @PostMapping("/delete")
    public String prepareDeleteMaterial(Material material){
        Material original = materialDao.readById(material.getId());
        materialDao.delete(original);
        return "redirect:/material/list";
    }

    // akcja zwraca listę materiałów
    @GetMapping("/list")
    public String materialList(Model model){
        model.addAttribute("materials", materialDao.findAll());
        return "material/showList";
    }
}
