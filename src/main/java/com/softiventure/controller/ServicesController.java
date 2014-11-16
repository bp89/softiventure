package com.softiventure.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/

@Controller
public class ServicesController {
    //private static final Logger logger = LoggerFactory.getLogger(ServicesController.class);

    @RequestMapping(value = "/services", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
        //logger.info("Services");
        return "services/services";
    }
}
