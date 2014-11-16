package com.softiventure.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/

@Controller
public class AboutController {
    //private static final Logger logger = LoggerFactory.getLogger(AboutController.class);


    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about(Locale locale, Model model,HttpServletRequest request) {
        //logger.info("Welcome about career! The client locale is {}.", locale);
        return "about/about";
    }
}
