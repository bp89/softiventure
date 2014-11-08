package com.softiventure.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	//	logger.info("Welcome! The client locale is {}.", locale);
		
		
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		//logger.info("Welcome! The client locale is {}.", locale);
		
		
		return "home";
	}
	

	@RequestMapping(value = "/webdevelopment", method = RequestMethod.GET)
	public String web(Locale locale, Model model,HttpServletRequest request) {
		//logger.info("Welcome web career! The client locale is {}.", locale);
		return "webdevelopment";
	}
	@RequestMapping(value = "/mobileapps", method = RequestMethod.GET)
	public String mobile(Locale locale, Model model,HttpServletRequest request) {
		//logger.info("Welcome mobile career! The client locale is {}.", locale);
		return "mobileapps";
	}
	/*@RequestMapping(value = "/training", method = RequestMethod.GET)
	public String training(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome training career! The client locale is {}.", locale);
		return "training";
	}*/
	/*@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactGet(HttpServletRequest request) {

		return "contact";
	}*/
	
	/* @RequestMapping("/login")
	    public String login(Model model) {
	        model.addAttribute("message", "two for login executed just now!");
	        return "login";
	    }
	  
	    @RequestMapping("/secured/welcome")
	    public String accessSecuredPage(Model model) {
	        model.addAttribute("message", "Only you are authenticated and authorized to view this page.");
	 
	        return "/secured/welcome";
	    }
	    @RequestMapping(value = "/admin", method = RequestMethod.GET)
		public String admin(Locale locale, Model model) {
			//logger.info("Welcome! The client locale is {}.", locale);
			
			
			return "admin";
		}
*/
}
