package com.softiventure.controller;

import java.util.Locale;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogController {
	//private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping(value ="/blogs", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
	//	logger.info("Services");
		return "blog/blogs";
	}
}
