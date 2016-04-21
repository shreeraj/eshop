package com.springproject.eshop;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springproject.eshop.domain.Administrator;
import com.springproject.eshop.domain.Category;



@Controller
public class AdminController {

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminHome(Model model) {
		
		model.addAttribute("page","adminHome.jsp");
		return "admin/index";
	}
	@RequestMapping(value = "/loginAdmin", method = RequestMethod.GET)
	public ModelAndView adminlogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("loginAdmin");

		return model;

	}
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.POST)
	public String processAdminLogin(@ModelAttribute("login") Administrator admin, Model model) {
		String username = admin.getUserName();
		String password = admin.getPassword();
		return "redirect:/adminHome";
	}
}
