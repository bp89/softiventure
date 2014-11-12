package com.softiventure.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String home(Locale locale, Model model, HttpServletRequest request) {
		
		Map<String, String> map = new HashMap<String, String>();
		 Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		System.out.println(map);
		String cookie=map.get("cookie");
		String clientid = cookie+"/home";
		//System.out.println(cookie);
		
		 HttpSession session = request.getSession(true);

	    // Increment the hit count for this page. The value is saved
	    Integer count = (Integer)session.getValue(clientid);
	    if (count == null)
	      count = new Integer(1);
	    else
	      count = new Integer(count.intValue() + 1);
	    session.putValue(clientid, count);
        System.out.println("SessionTracker");
	    String[] names = session.getValueNames();
	    for (int i = 0; i < names.length; i++) {
	      System.out.println(names[i] + ": " + session.getValue(names[i]));
	    }
		
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home1(Locale locale, Model model, HttpServletRequest request) {
				
		Map<String, String> map = new HashMap<String, String>();
		 
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		System.out.println(map);
		String cookie=map.get("cookie");
		String clientid = cookie+"/home";
		 HttpSession session = request.getSession(true);
		    Integer count = (Integer)session.getValue(clientid);
		    if (count == null)
		      count = new Integer(1);
		    else
		      count = new Integer(count.intValue() + 1);
		    session.putValue(clientid, count);

		    System.out.println("SessionTracker");
		    String[] names = session.getValueNames();
		    for (int i = 0; i < names.length; i++) {
		      System.out.println(names[i] + ": " + session.getValue(names[i]));
		    }
		return "home";
	}
	

	@RequestMapping(value = "/webdevelopment", method = RequestMethod.GET)
	public String web(Locale locale, Model model,HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		 
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		System.out.println(map);
		String cookie=map.get("cookie");
		String clientid = cookie+"/services/web";
		 HttpSession session = request.getSession(true);

		    // Increment the hit count for this page. The value is saved
		    Integer count = (Integer)session.getValue(clientid);
		    if (count == null)
		      count = new Integer(1);
		    else
		      count = new Integer(count.intValue() + 1);
		    session.putValue(clientid, count);

		    System.out.println("SessionTracker");
		    String[] names = session.getValueNames();
		    for (int i = 0; i < names.length; i++) {
		      System.out.println(names[i] + ": " + session.getValue(names[i]));
		    }
		return "webdevelopment";
	}
	@RequestMapping(value = "/mobileapps", method = RequestMethod.GET)
	public String mobile(Locale locale, Model model,HttpServletRequest request) {
		//logger.info("Welcome mobile career! The client locale is {}.", locale);
		Map<String, String> map = new HashMap<String, String>();
		 
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		System.out.println(map);
		String cookie=map.get("cookie");
		String clientid = cookie+"/services/mobile";
		 HttpSession session = request.getSession(true);

		    // Increment the hit count for this page. The value is saved
		    Integer count = (Integer)session.getValue(clientid);
		    if (count == null)
		      count = new Integer(1);
		    else
		      count = new Integer(count.intValue() + 1);
		    session.putValue(clientid, count);

		    System.out.println("SessionTracker");
		    String[] names = session.getValueNames();
		    for (int i = 0; i < names.length; i++) {
		      System.out.println(names[i] + ": " + session.getValue(names[i]));
		    }
		return "mobileapps";
	}
	
	
	   
}
