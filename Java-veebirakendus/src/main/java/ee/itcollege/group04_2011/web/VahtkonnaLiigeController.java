package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.VahtkonnaLiige;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "vahtkonnaliiges", formBackingObject = VahtkonnaLiige.class)
@RequestMapping("/vahtkonnaliiges")
@Controller
public class VahtkonnaLiigeController {
}
