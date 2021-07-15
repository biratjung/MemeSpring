package herald.birat.meme.controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import herald.birat.meme.domain.User;
import herald.birat.meme.domain.Image;
import herald.birat.meme.services.AdminService;

@Controller
@RequestMapping(value="/admin")


public class AdminController {
	
	private final String uploadLocation="file:/C:/Users/acer/Pictures/meme/";
	
	@Autowired
	AdminService adminserviceimpl;
	
	@RequestMapping(method=RequestMethod.GET)
	public String getAdminPage(Model model, HttpServletRequest request){
	
		return "/admin/adminindex";
	
	}
	
	@RequestMapping(value = "image",method=RequestMethod.GET)
	public String getImage(Model model) {
		Image image = new Image();
		model.addAttribute("img",image);
		return "/admin/image";
		
	}

	@RequestMapping(method=RequestMethod.POST, value={"image"})
	public String addNewImage(HttpServletRequest servletRequest,@ModelAttribute("img") @Valid Image image,
			BindingResult bindingResult){
		
		if(bindingResult.hasErrors()) {
			return "admin/image";
		}
		
		String newname =RandomStringUtils.randomAlphanumeric(5)+image.getImageFile().getOriginalFilename();
		String location = uploadLocation+newname;
		image.setImageUrl(newname);
		
		boolean result =adminserviceimpl.addNewImage(image);
		
		if(result) {
			try {
				image.getImageFile().transferTo(new File(location));
				return "redirect:/admin/image?message=New Image was added successfully";	

			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "redirect:/admin/image?message=Image is added but file cannot be moved";	

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "redirect:/admin/image?message=Image is added but file cannot be moved";	

			}
		}else {
			return "redirect:/admin/image?message=Not able to add new image";	

		}	
		
	}
	
}
	

