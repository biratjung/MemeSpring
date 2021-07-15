package herald.birat.meme.controllers;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import herald.birat.meme.domain.User;
import herald.birat.meme.services.UserService;
import herald.birat.meme.domain.Image;


@Controller
@RequestMapping(value="/")

public class MainPageController {
	
	
	
	@Autowired
	private UserService userserviceimpl;
	
	
	@ModelAttribute("username")
	  String getUserName(Principal principal) {
		if(principal!=null)
			return principal.getName();
		else
			return null;
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String getHomePage(Model model,HttpServletRequest request){
	
		List<Integer> allimages=(List<Integer>)request.getSession().getAttribute("save");
		
		//get all images to be shown in home page 
		model.addAttribute("allimages",userserviceimpl.getAllImages());
		
		//show index.jsp page
		return "index";
	
	}
	
	
	@RequestMapping(value = "login",method=RequestMethod.GET)
	public String getLoginPage(Model model) {
		
		return "login";
		
	}
	
	
	@RequestMapping(value = "login/failure",method=RequestMethod.GET)
	public String loginFailure(Model model) {
		
		
		return "redirect:/?message=Unable to login.Please check your username and password";
		
	}
	
	@RequestMapping(value = "register",method=RequestMethod.GET)
	public String getRegisterPage(Model model) {
		
		model.addAttribute("msg","hi, Please fill this form");
		model.addAttribute("user",new User());
		return "register";
		
	}
	



	@RequestMapping(method=RequestMethod.POST, value={"register"})
	public String insertNewCustomer(@ModelAttribute("user") @Valid User newuser,
			BindingResult bindingResult){
		
		//validate the form data
		if(bindingResult.hasErrors()) {
			return "register";
		}
		
		else {
		userserviceimpl.registerUser(newuser);
		
				return "redirect:register?message=Registration is successful";	
			    
		}
		
	}
	
	
	
	@RequestMapping(value = "logout/success",method=RequestMethod.GET)
	public String logoutSuccess(Model model) {
		
		
		return "redirect:/?message=Logout Successful";
		
	}
	
	

	
	
	
	}

	

	