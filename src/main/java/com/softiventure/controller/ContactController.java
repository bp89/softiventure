package com.softiventure.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContactController {
//	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
	
	@Autowired
    private JavaMailSender mailSender;
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactGet(HttpServletRequest request) {

		return "contact/contact";
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
}
