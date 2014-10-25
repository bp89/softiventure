package com.softiventure.controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
		logger.info("Welcome home! The client locale is {}.", locale);
		/*
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		return "home";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact1(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome career! The client locale is {}.", locale);
		
		
		
		return "contact";
	}
	@RequestMapping(value = {"/contact"}, method = RequestMethod.POST)
	   // @RequestMapping(method = RequestMethod.POST)
	    public String doSendEmail(HttpServletRequest request) {
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
	        // forwards to the view named "Result"
	        return "Result";
	    }
	        
}
