package com.softiventure.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrainingController {
	//private static final Logger logger = LoggerFactory.getLogger(TrainingController.class);
	
	
	@RequestMapping(value = "/training", method = RequestMethod.GET)
	public String training(Locale locale, Model model,HttpServletRequest request) {
		//logger.info("Welcome training career! The client locale is {}.", locale);
		return "training/training";
	}
}
