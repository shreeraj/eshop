package com.springproject.eshop;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.Role;
import com.springproject.eshop.domain.User;
import com.springproject.eshop.service.IUserDAO;
@Controller
public class UserController {
	@Resource
	private IUserDAO userDAOImpl;
	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
	public String adminUser(Model model) {
		List<User> users= userDAOImpl.findAll();
		model.addAttribute("users",users);
		model.addAttribute("page", "user/list.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/addUser", method = RequestMethod.GET)
	public String adminAddUser(Model model) {
		User user = new User();
		model.addAttribute(user);
		model.addAttribute("page","user/add.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/addUser", method = RequestMethod.POST)
	public String saveAddUser(@ModelAttribute("user") User user, Model model,
			final RedirectAttributes redirectAttributes) {
		//System.out.println(category.getName());
		userDAOImpl.create(user);
		model.addAttribute("page", "user/list.jsp");
		redirectAttributes.addFlashAttribute("message", "User Added Successfully..");
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value = "/admin/editUser/{id}", method = RequestMethod.GET)
	public String editAdminUser(Model model, @PathVariable long id) {
		
		User user = userDAOImpl.findById(id);
		model.addAttribute(user);
		model.addAttribute("page", "user/add.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/editUser/{id}", method = RequestMethod.POST)
	public String updateAdminUser(Model model, @PathVariable long id, @ModelAttribute("user") User user, final RedirectAttributes redirectAttributes) {
		
		User usr = userDAOImpl.findById(id);
		usr.setUserName(user.getUserName());
		userDAOImpl.update(usr);
		redirectAttributes.addFlashAttribute("message","User is updated successfully");
		
		return "redirect:/admin/user";
	}
	
	@RequestMapping(value = "/admin/deleteUser/{id}", method = RequestMethod.GET)
	public String deleteAdminUser(Model model, @PathVariable long id, final RedirectAttributes redirectAttributes) {
		
		User usr = userDAOImpl.findById(id);
		//cat.setCategoryId(id);
		userDAOImpl.delete(usr);
		redirectAttributes.addFlashAttribute("message","User is deleted successfully");
		
		return "redirect:/admin/user";
	}
//	@RequestMapping(method = RequestMethod.GET)
//    public String initForm(Model model) {
//        initModelList(model);
//        return "role";
//    }
	private void initModelList(Model model) {
//        List<String> rolesList = new ArrayList<String>();
        Role[] rolesList =Role.class.getEnumConstants();
//        rolesList.add("ADMIN");
//        rolesList.add("MEMBER");
//        rolesList.add("GUEST");
        model.addAttribute("roles", rolesList);
    }
}
