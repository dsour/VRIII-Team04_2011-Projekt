// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.Amet;
import ee.itcollege.group04_2011.entities.AmetVaeosa;
import ee.itcollege.group04_2011.entities.PiirivalvurVaeosa;
import ee.itcollege.group04_2011.entities.Vaeosa;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect AmetVaeosaController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AmetVaeosaController.create(@Valid AmetVaeosa ametVaeosa, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ametVaeosa", ametVaeosa);
            return "ametvaeosas/create";
        }
        uiModel.asMap().clear();
        ametVaeosa.persist();
        return "redirect:/ametvaeosas/" + encodeUrlPathSegment(ametVaeosa.getAmetVaeosasId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AmetVaeosaController.createForm(Model uiModel) {
        uiModel.addAttribute("ametVaeosa", new AmetVaeosa());
        return "ametvaeosas/create";
    }
    
    @RequestMapping(value = "/{ametVaeosasId}", method = RequestMethod.GET)
    public String AmetVaeosaController.show(@PathVariable("ametVaeosasId") Long ametVaeosasId, Model uiModel) {
        uiModel.addAttribute("ametvaeosa", AmetVaeosa.findAmetVaeosa(ametVaeosasId));
        uiModel.addAttribute("itemId", ametVaeosasId);
        return "ametvaeosas/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AmetVaeosaController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("ametvaeosas", AmetVaeosa.findAmetVaeosaEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) AmetVaeosa.countAmetVaeosas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ametvaeosas", AmetVaeosa.findAllAmetVaeosas());
        }
        return "ametvaeosas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AmetVaeosaController.update(@Valid AmetVaeosa ametVaeosa, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ametVaeosa", ametVaeosa);
            return "ametvaeosas/update";
        }
        uiModel.asMap().clear();
        ametVaeosa.merge();
        return "redirect:/ametvaeosas/" + encodeUrlPathSegment(ametVaeosa.getAmetVaeosasId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{ametVaeosasId}", params = "form", method = RequestMethod.GET)
    public String AmetVaeosaController.updateForm(@PathVariable("ametVaeosasId") Long ametVaeosasId, Model uiModel) {
        uiModel.addAttribute("ametVaeosa", AmetVaeosa.findAmetVaeosa(ametVaeosasId));
        return "ametvaeosas/update";
    }
    
    @RequestMapping(value = "/{ametVaeosasId}", method = RequestMethod.DELETE)
    public String AmetVaeosaController.delete(@PathVariable("ametVaeosasId") Long ametVaeosasId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AmetVaeosa.findAmetVaeosa(ametVaeosasId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/ametvaeosas";
    }
    
    @ModelAttribute("amets")
    public Collection<Amet> AmetVaeosaController.populateAmets() {
        return Amet.findAllAmets();
    }
    
    @ModelAttribute("ametvaeosas")
    public Collection<AmetVaeosa> AmetVaeosaController.populateAmetVaeosas() {
        return AmetVaeosa.findAllAmetVaeosas();
    }
    
    @ModelAttribute("piirivalvurvaeosas")
    public Collection<PiirivalvurVaeosa> AmetVaeosaController.populatePiirivalvurVaeosas() {
        return PiirivalvurVaeosa.findAllPiirivalvurVaeosas();
    }
    
    @ModelAttribute("vaeosas")
    public Collection<Vaeosa> AmetVaeosaController.populateVaeosas() {
        return Vaeosa.findAllVaeosas();
    }
    
    String AmetVaeosaController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
