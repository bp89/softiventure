package com.softiventure.controller;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.softiventure.beans.login.Users;
import com.softiventure.service.login.LoginServiceImpl;

@Controller
public class LoginController {
	@Autowired
	LoginServiceImpl loginService;
	//int count = 0;
	@RequestMapping("/login")
	public ModelAndView getLoginForm(@ModelAttribute Users users,HttpServletRequest request,
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		
		Map<String, String> map = new HashMap<String, String>();
		 Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		System.out.println(map);
		String cookie=map.get("cookie");
		String clientid = cookie+"/login";
		 HttpSession session = request.getSession(true);
		 Integer count = (Integer)session.getAttribute("counter");
		    if (count == null)
		      count = new Integer(1);
		    else
		      count = new Integer(count.intValue() + 1);
		    session.setAttribute("counter", count);
	        System.out.println("SessionTracker");
		    String[] names = session.getValueNames();
		    for (int i = 0; i < names.length; i++) {
		      System.out.println(names[i] + ": " + session.getValue(names[i]));
		    }
		String message = "";
		if (error != null) {
//			if(count<3){
//			message = "Incorrect username or password !";
//			//return new ModelAndView("login", "message", message);
//		}
//			else {
//				message = "You have entered incorrect username or password!";
//				//String counter=Integer.toString(count);
//				/*session.setAttribute("counter",counter);*/
//				/*session.setAttribute("counter",count);*/
//				request.setAttribute("counter",count);
//				return new ModelAndView("loginWithCaptcha", "message", message);
//				//return new ModelAndView("form", "message", message);
//			}
//		/*else if (logout != null) {
//			message = "Logout successful !";
//			return new ModelAndView("home", "message", message);
//		}*/
            message = "Incorrect username or password !";
		}
		return new ModelAndView("login", "message", message);
	}
	
	

	@RequestMapping("/admin**")
	public String getAdminProfile(@ModelAttribute Users users,HttpServletRequest request) {
	//	return "admin";
		//HttpSession session = request.getSession(true);
		String code = users.getCaptchaCode();
		String username = users.getUsername();
		System.out.println("users code" + code);
		System.out.println("users username" + username);
		//String codeStr=Integer.toString(code);
		//session.setAttribute("code",rstr);
		request.setAttribute("code",code);
		return "validate";
	}

	@RequestMapping("/user**")
	public String getUserProfile() {
		//return "user";
		return "validate";
	}

	@RequestMapping("/403")
	public ModelAndView getAccessDenied() {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String username = "";
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}

		return new ModelAndView("403", "username", username);
	}
	@RequestMapping("/forgotPassword")
	public String getForgotPassword(@ModelAttribute Users users) {
		return "forgotPassword";
	}
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
	public ModelAndView getpasswordRecovery(@ModelAttribute Users users) {
		String username= users.getUsername();
		String password = loginService.providePassword(username);
		return new ModelAndView("recoverPassword", "password", password);
			}
}
