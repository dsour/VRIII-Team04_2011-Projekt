// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.Piiriloik;
import ee.itcollege.group04_2011.entities.Vahtkond;
import ee.itcollege.group04_2011.entities.VahtkonndPiiriloigul;
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

privileged aspect VahtkonndPiiriloigulController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String VahtkonndPiiriloigulController.create(@Valid VahtkonndPiiriloigul vahtkonndPiiriloigul, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("vahtkonndPiiriloigul", vahtkonndPiiriloigul);
            return "vahtkonndpiiriloiguls/create";
        }
        uiModel.asMap().clear();
        vahtkonndPiiriloigul.persist();
        return "redirect:/vahtkonndpiiriloiguls/" + encodeUrlPathSegment(vahtkonndPiiriloigul.getVahtkondPiiriloiulId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String VahtkonndPiiriloigulController.createForm(Model uiModel) {
        uiModel.addAttribute("vahtkonndPiiriloigul", new VahtkonndPiiriloigul());
        return "vahtkonndpiiriloiguls/create";
    }
    
    @RequestMapping(value = "/{vahtkondPiiriloiulId}", method = RequestMethod.GET)
    public String VahtkonndPiiriloigulController.show(@PathVariable("vahtkondPiiriloiulId") Long vahtkondPiiriloiulId, Model uiModel) {
        uiModel.addAttribute("vahtkonndpiiriloigul", VahtkonndPiiriloigul.findVahtkonndPiiriloigul(vahtkondPiiriloiulId));
        uiModel.addAttribute("itemId", vahtkondPiiriloiulId);
        return "vahtkonndpiiriloiguls/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String VahtkonndPiiriloigulController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("vahtkonndpiiriloiguls", VahtkonndPiiriloigul.findVahtkonndPiiriloigulEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) VahtkonndPiiriloigul.countVahtkonndPiiriloiguls() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("vahtkonndpiiriloiguls", VahtkonndPiiriloigul.findAllVahtkonndPiiriloiguls());
        }
        return "vahtkonndpiiriloiguls/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String VahtkonndPiiriloigulController.update(@Valid VahtkonndPiiriloigul vahtkonndPiiriloigul, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("vahtkonndPiiriloigul", vahtkonndPiiriloigul);
            return "vahtkonndpiiriloiguls/update";
        }
        uiModel.asMap().clear();
        vahtkonndPiiriloigul.merge();
        return "redirect:/vahtkonndpiiriloiguls/" + encodeUrlPathSegment(vahtkonndPiiriloigul.getVahtkondPiiriloiulId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{vahtkondPiiriloiulId}", params = "form", method = RequestMethod.GET)
    public String VahtkonndPiiriloigulController.updateForm(@PathVariable("vahtkondPiiriloiulId") Long vahtkondPiiriloiulId, Model uiModel) {
        uiModel.addAttribute("vahtkonndPiiriloigul", VahtkonndPiiriloigul.findVahtkonndPiiriloigul(vahtkondPiiriloiulId));
        return "vahtkonndpiiriloiguls/update";
    }
    
    @RequestMapping(value = "/{vahtkondPiiriloiulId}", method = RequestMethod.DELETE)
    public String VahtkonndPiiriloigulController.delete(@PathVariable("vahtkondPiiriloiulId") Long vahtkondPiiriloiulId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        VahtkonndPiiriloigul.findVahtkonndPiiriloigul(vahtkondPiiriloiulId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/vahtkonndpiiriloiguls";
    }
    
    @ModelAttribute("piiriloiks")
    public Collection<Piiriloik> VahtkonndPiiriloigulController.populatePiiriloiks() {
        return Piiriloik.findAllPiiriloiks();
    }
    
    @ModelAttribute("vahtkonds")
    public Collection<Vahtkond> VahtkonndPiiriloigulController.populateVahtkonds() {
        return Vahtkond.findAllVahtkonds();
    }
    
    @ModelAttribute("vahtkonndpiiriloiguls")
    public Collection<VahtkonndPiiriloigul> VahtkonndPiiriloigulController.populateVahtkonndPiiriloiguls() {
        return VahtkonndPiiriloigul.findAllVahtkonndPiiriloiguls();
    }
    
    String VahtkonndPiiriloigulController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
