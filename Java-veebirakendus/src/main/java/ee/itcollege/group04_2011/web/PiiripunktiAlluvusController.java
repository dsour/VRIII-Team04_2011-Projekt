package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.PiiripunktiAlluvus;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "piiripunktialluvuses", formBackingObject = PiiripunktiAlluvus.class)
@RequestMapping("/piiripunktialluvuses")
@Controller
public class PiiripunktiAlluvusController {
}
