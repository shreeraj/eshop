package com.springproject.eshop;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.Product;
import com.springproject.eshop.domain.SiteSetting;
import com.springproject.eshop.domain.Slider;
import com.springproject.eshop.domain.User;
import com.springproject.eshop.service.ICategoryDAO;
import com.springproject.eshop.service.IProductDAO;
import com.springproject.eshop.service.ISiteSettingDAO;
import com.springproject.eshop.service.ISliderDAO;
import com.springproject.eshop.service.IUserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource
	private ICategoryDAO categoryDAO;
	@Resource
	private IUserDAO userDAOImpl;
	@Resource
	private ISliderDAO sliderDAOImpl;
	@Resource
	private IProductDAO productDAOImpl;
	@Resource
	private ISiteSettingDAO siteSettingDAOImpl;

	@Resource

	@Autowired
	private HttpSession httpsession;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		List<Category> categories = categoryDAO.findAll();

		model.addAttribute("categories", categories);

		List<Slider> sliders = sliderDAOImpl.findAll();

		model.addAttribute("sliders", sliders);

		User user = new User();
		model.addAttribute("user", user);

		List<Product> products = productDAOImpl.findAll();
		model.addAttribute("products", products);
		return "home";
	}

	// @RequestMapping(value = "/", method = RequestMethod.POST)
	// public String search(@ModelAttribute("searchResult") Product product,
	// Model model,@RequestParam("txtSearch") String txtSearch,
	// final RedirectAttributes redirectAttributes) {
	// model.addAttribute("txtSearch",txtSearch);
	// model.addAttribute("page", "/searchResult.jsp");
	// User user = new User();
	// model.addAttribute("user",user);
	// return "redirect:/searchResult/"+txtSearch;
	// }

	@RequestMapping(value = "/searchResult", method = RequestMethod.POST)
	public String searchResult(Model model, HttpServletRequest request) {
		String name = request.getParameter("txtSearch");
		List<Product> products = productDAOImpl.findByName(name);
		model.addAttribute("products", products);
		User user = new User();
		model.addAttribute("user", user);
		return "searchResult";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		List<Category> categories = categoryDAO.findAll();
		User user = new User();
		model.addAttribute(user);
		model.addAttribute("categories", categories);

		return "signup";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String saveAddUser(@ModelAttribute("user") User user, Model model,
			final RedirectAttributes redirectAttributes) {
		// System.out.println(category.getName());
		userDAOImpl.create(user);
		model.addAttribute("page", "user/list.jsp");
		redirectAttributes.addFlashAttribute("message", "User Added Successfully..");
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, @ModelAttribute User user, final RedirectAttributes redirectAttributes) {
		String username = user.getUserName();
		String password = user.getPassword();
		User validUser = userDAOImpl.findByUserNamePassword(username, password);
		if (validUser != null) {
			httpsession.setAttribute("userId", validUser.getId());
			httpsession.setAttribute("username", validUser.getUserName());

			httpsession.setAttribute("products", new ArrayList<Integer>());

			redirectAttributes.addFlashAttribute("message", "Login Successfull");
		} else {
			redirectAttributes.addFlashAttribute("message", "Invalid Login");
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, final RedirectAttributes redirectAttributes) {
		// System.out.println(category.getName());
		httpsession.invalidate();
		redirectAttributes.addFlashAttribute("message", "Logout Successfully..");
		return "redirect:/";
	}

	@ModelAttribute("categories")
	public List<Category> getVersion() {
		return categoryDAO.findAll();
	}

	@ModelAttribute("user")
	public User getUser() {
		return new User();
	}

	@ModelAttribute("siteSettings")
	public List<SiteSetting> getSiteSetting() {
		return siteSettingDAOImpl.findAll();

		
	}

}
