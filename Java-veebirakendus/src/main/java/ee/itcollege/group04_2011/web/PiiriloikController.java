package ee.itcollege.group04_2011.web;

import ee.itcollege.group04_2011.entities.Piiriloik;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "piiriloiks", formBackingObject = Piiriloik.class)
@RequestMapping("/piiriloiks")
@Controller
public class PiiriloikController {
}
