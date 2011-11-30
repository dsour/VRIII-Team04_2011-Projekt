package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.Riik;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "riiks", formBackingObject = Riik.class)
@RequestMapping("/riiks")
@Controller
public class RiikController {
}
