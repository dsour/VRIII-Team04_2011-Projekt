// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.IsikIntsidendi;
import ee.itcollege.group04_2011.entities.IsikuSeadusIntsidendi;
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

privileged aspect IsikuSeadusIntsidendiController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String IsikuSeadusIntsidendiController.create(@Valid IsikuSeadusIntsidendi isikuSeadusIntsidendi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("isikuSeadusIntsidendi", isikuSeadusIntsidendi);
            return "isikuseadusintsidendis/create";
        }
        uiModel.asMap().clear();
        isikuSeadusIntsidendi.persist();
        return "redirect:/isikuseadusintsidendis/" + encodeUrlPathSegment(isikuSeadusIntsidendi.getIsikuSeadusIntsidendisId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String IsikuSeadusIntsidendiController.createForm(Model uiModel) {
        uiModel.addAttribute("isikuSeadusIntsidendi", new IsikuSeadusIntsidendi());
        return "isikuseadusintsidendis/create";
    }
    
    @RequestMapping(value = "/{isikuSeadusIntsidendisId}", method = RequestMethod.GET)
    public String IsikuSeadusIntsidendiController.show(@PathVariable("isikuSeadusIntsidendisId") Long isikuSeadusIntsidendisId, Model uiModel) {
        uiModel.addAttribute("isikuseadusintsidendi", IsikuSeadusIntsidendi.findIsikuSeadusIntsidendi(isikuSeadusIntsidendisId));
        uiModel.addAttribute("itemId", isikuSeadusIntsidendisId);
        return "isikuseadusintsidendis/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String IsikuSeadusIntsidendiController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("isikuseadusintsidendis", IsikuSeadusIntsidendi.findIsikuSeadusIntsidendiEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) IsikuSeadusIntsidendi.countIsikuSeadusIntsidendis() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("isikuseadusintsidendis", IsikuSeadusIntsidendi.findAllIsikuSeadusIntsidendis());
        }
        return "isikuseadusintsidendis/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String IsikuSeadusIntsidendiController.update(@Valid IsikuSeadusIntsidendi isikuSeadusIntsidendi, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("isikuSeadusIntsidendi", isikuSeadusIntsidendi);
            return "isikuseadusintsidendis/update";
        }
        uiModel.asMap().clear();
        isikuSeadusIntsidendi.merge();
        return "redirect:/isikuseadusintsidendis/" + encodeUrlPathSegment(isikuSeadusIntsidendi.getIsikuSeadusIntsidendisId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{isikuSeadusIntsidendisId}", params = "form", method = RequestMethod.GET)
    public String IsikuSeadusIntsidendiController.updateForm(@PathVariable("isikuSeadusIntsidendisId") Long isikuSeadusIntsidendisId, Model uiModel) {
        uiModel.addAttribute("isikuSeadusIntsidendi", IsikuSeadusIntsidendi.findIsikuSeadusIntsidendi(isikuSeadusIntsidendisId));
        return "isikuseadusintsidendis/update";
    }
    
    @RequestMapping(value = "/{isikuSeadusIntsidendisId}", method = RequestMethod.DELETE)
    public String IsikuSeadusIntsidendiController.delete(@PathVariable("isikuSeadusIntsidendisId") Long isikuSeadusIntsidendisId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        IsikuSeadusIntsidendi.findIsikuSeadusIntsidendi(isikuSeadusIntsidendisId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/isikuseadusintsidendis";
    }
    
    @ModelAttribute("isikintsidendis")
    public Collection<IsikIntsidendi> IsikuSeadusIntsidendiController.populateIsikIntsidendis() {
        return IsikIntsidendi.findAllIsikIntsidendis();
    }
    
    @ModelAttribute("isikuseadusintsidendis")
    public Collection<IsikuSeadusIntsidendi> IsikuSeadusIntsidendiController.populateIsikuSeadusIntsidendis() {
        return IsikuSeadusIntsidendi.findAllIsikuSeadusIntsidendis();
    }
    
    @ModelAttribute("seadusepunkts")
    public Collection<SeadusePunkt> IsikuSeadusIntsidendiController.populateSeadusePunkts() {
        return SeadusePunkt.findAllSeadusePunkts();
    }
    
    String IsikuSeadusIntsidendiController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
