// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.Seadus;
import ee.itcollege.group04_2011.entities.SeadusePunkt;
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

privileged aspect SeadusController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String SeadusController.create(@Valid Seadus seadus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("seadus", seadus);
            return "seaduses/create";
        }
        uiModel.asMap().clear();
        seadus.persist();
        return "redirect:/seaduses/" + encodeUrlPathSegment(seadus.getSeaduseId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String SeadusController.createForm(Model uiModel) {
        uiModel.addAttribute("seadus", new Seadus());
        return "seaduses/create";
    }
    
    @RequestMapping(value = "/{seaduseId}", method = RequestMethod.GET)
    public String SeadusController.show(@PathVariable("seaduseId") Long seaduseId, Model uiModel) {
        uiModel.addAttribute("seadus", Seadus.findSeadus(seaduseId));
        uiModel.addAttribute("itemId", seaduseId);
        return "seaduses/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String SeadusController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("seaduses", Seadus.findSeadusEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) Seadus.countSeaduses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("seaduses", Seadus.findAllSeaduses());
        }
        return "seaduses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String SeadusController.update(@Valid Seadus seadus, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("seadus", seadus);
            return "seaduses/update";
        }
        uiModel.asMap().clear();
        seadus.merge();
        return "redirect:/seaduses/" + encodeUrlPathSegment(seadus.getSeaduseId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{seaduseId}", params = "form", method = RequestMethod.GET)
    public String SeadusController.updateForm(@PathVariable("seaduseId") Long seaduseId, Model uiModel) {
        uiModel.addAttribute("seadus", Seadus.findSeadus(seaduseId));
        return "seaduses/update";
    }
    
    @RequestMapping(value = "/{seaduseId}", method = RequestMethod.DELETE)
    public String SeadusController.delete(@PathVariable("seaduseId") Long seaduseId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Seadus.findSeadus(seaduseId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/seaduses";
    }
    
    @ModelAttribute("seaduses")
    public Collection<Seadus> SeadusController.populateSeaduses() {
        return Seadus.findAllSeaduses();
    }
    
    @ModelAttribute("seadusepunkts")
    public Collection<SeadusePunkt> SeadusController.populateSeadusePunkts() {
        return SeadusePunkt.findAllSeadusePunkts();
    }
    
    String SeadusController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
