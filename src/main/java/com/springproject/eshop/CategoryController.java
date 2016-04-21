package com.springproject.eshop;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.model.CategoryDAOImpl;
import com.springproject.eshop.service.ICategoryDAO;

@Controller
public class CategoryController {
	@Resource
	private ICategoryDAO categoryDAOImpl;

	@RequestMapping(value = "/admin/category", method = RequestMethod.GET)
	public String adminCategory(Model model) {
		List<Category> categories = categoryDAOImpl.findAll();

		model.addAttribute("categories", categories);
		model.addAttribute("page", "category/list.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addCategory", method = RequestMethod.GET)
	public String adminAddCategory(Model model) {
		Category cat = new Category();
		model.addAttribute(cat);
		model.addAttribute("page", "category/add.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addCategory", method = RequestMethod.POST)
	public ModelAndView saveAddCategory(@Valid Category category, BindingResult result,
			final RedirectAttributes redirectAttributes) {
		ModelAndView model = new ModelAndView();
		
		if (!result.hasErrors()) {
			
			categoryDAOImpl.create(category);
			
			model.addObject("page", "category/list.jsp");
			model.setViewName("redirect:/admin/category");
			redirectAttributes.addFlashAttribute("message", "Category Added Successfully..");

		} else {
			
			model.addObject("page", "category/add.jsp");
			model.setViewName("admin/index");
		}
		return model;

	}

	@RequestMapping(value = "/admin/editCategory/{id}", method = RequestMethod.GET)
	public String editAdminCategory(Model model, @PathVariable long id) {

		Category cat = categoryDAOImpl.findById(id);
		model.addAttribute(cat);
		model.addAttribute("page", "category/add.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/editCategory/{id}", method = RequestMethod.POST)
	public String updateAdminCategory(Model model, @PathVariable long id, @ModelAttribute("category") Category category,
			final RedirectAttributes redirectAttributes) {

		Category cat = categoryDAOImpl.findById(id);
		cat.setName(category.getName());
		categoryDAOImpl.update(cat);
		redirectAttributes.addFlashAttribute("message", "Category is updated successfully");

		return "redirect:/admin/category";
	}

	@RequestMapping(value = "/admin/deleteCategory/{id}", method = RequestMethod.GET)
	public String deleteAdminCategory(Model model, @PathVariable long id, final RedirectAttributes redirectAttributes) {

		Category cat = categoryDAOImpl.findById(id);
		categoryDAOImpl.delete(cat);
		redirectAttributes.addFlashAttribute("message", "Category is deleted successfully");

		return "redirect:/admin/category";
	}

}
