package com.softiventure.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
public class TrainingController {
//    private static final Logger logger = LoggerFactory.getLogger(TrainingController.class);


    @RequestMapping(value = "/training", method = RequestMethod.GET)
    public String training(Locale locale, Model model,HttpServletRequest request) {
        //logger.info("Welcome training career! The client locale is {}.", locale);
        return "training/training";
    }
}
