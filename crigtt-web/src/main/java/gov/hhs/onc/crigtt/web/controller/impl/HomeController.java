package gov.hhs.onc.crigtt.web.controller.impl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("controllerHome")
public class HomeController {
    @RequestMapping(value = { "/", "/home" }, method = { RequestMethod.GET })
    public String displayHome() {
        return "home";
    }
}
