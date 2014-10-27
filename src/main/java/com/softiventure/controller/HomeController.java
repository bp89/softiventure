package com.softiventure.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
    private JavaMailSender mailSender;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome! The client locale is {}.", locale);
		
		
		return "home";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactGet(HttpServletRequest request) {

		return "contact";
	}
	@RequestMapping(value = {"/contact"}, method = RequestMethod.POST)
	    public String contactPost(HttpServletRequest request) {
	        // takes input from e-mail form
	        String recipientAddress = request.getParameter("email");
	        String name = request.getParameter("name");
	        String message = request.getParameter("msg");
	        String phone = request.getParameter("phone");
	        
	        // prints debug info
	        System.out.println("To: " + recipientAddress);
	        System.out.println("Subject: " + name);
	        System.out.println("Message: " + message);
	        System.out.println("Phone " + phone);
	       
	        // creates a simple e-mail object
	        SimpleMailMessage email = new SimpleMailMessage();
	        email.setTo("ruby.agrawal27@gmail.com");
	        email.setSubject("Query for contact us ");
	        email.setText("i am "+name+". My E-mail Id is "+recipientAddress+". My phone number is "+phone+"."+message);
	         
	        // sends the e-mail
	        mailSender.send(email);
	         
	        SimpleMailMessage email1 = new SimpleMailMessage();
	        email1.setTo(recipientAddress);
	        email1.setSubject("Thanks for mail");
	        email1.setText("thankyou for mailing us");
	        mailSender.send(email1);
	        // forwards to the view named "home"
	        return "home";
	    }
	 @RequestMapping("/login")
	    public String two(Model model) {
	        model.addAttribute("message", "two for login executed just now!");
	        return "login";
	    }
	  
	    @RequestMapping("/secured/welcome")
	    public String accessSecuredPage(Model model) {
	        model.addAttribute("message", "Only you are authenticated and authorized to view this page.");
	 
	        return "/secured/welcome";
	    }
	    @RequestMapping(value = "/home1", method = RequestMethod.GET)
		public String home1(Locale locale, Model model) {
			logger.info("Welcome! The client locale is {}.", locale);
			
			
			return "home1";
		}

}
