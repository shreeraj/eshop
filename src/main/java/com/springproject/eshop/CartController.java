package com.springproject.eshop;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Order;
import com.springproject.eshop.domain.OrderLine;
import com.springproject.eshop.domain.Product;
import com.springproject.eshop.domain.SiteSetting;
import com.springproject.eshop.domain.Status;
import com.springproject.eshop.domain.User;
import com.springproject.eshop.service.ICategoryDAO;
import com.springproject.eshop.service.IOrderDAO;
import com.springproject.eshop.service.IOrderLineDAO;
import com.springproject.eshop.service.IProductDAO;
import com.springproject.eshop.service.ISiteSettingDAO;
import com.springproject.eshop.service.IUserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
@SuppressWarnings("unchecked")
public class CartController {
	@Resource
	private ICategoryDAO categoryDAO;

	@Resource
	private IProductDAO productDAO;

	@Resource
	private IUserDAO userDAO;

	@Resource
	private IOrderDAO orderDAO;

	@Resource
	private IOrderLineDAO orderlineDAO;
	@Resource
	private ISiteSettingDAO siteSettingDAOImpl;

	@Autowired
	private HttpSession httpsession;

	private static final Logger logger = LoggerFactory.getLogger(CartController.class);

	@RequestMapping(value = "/showCart", method = RequestMethod.GET)
	public String productByCat(Model model) {
		List<Product> products = new ArrayList<Product>();
		List<Long> cart = (List<Long>) httpsession.getAttribute("products");
		for (Long id : cart) {
			products.add(productDAO.findById(id));
		}

		model.addAttribute("products", products);

		User user = new User();
		model.addAttribute("user", user);
		return "cart";
	}

	@RequestMapping(value = "/processCart", method = RequestMethod.POST)
	public String processCart(Model model, HttpServletRequest request, HttpServletResponse response) {

		List<Product> products = new ArrayList<Product>();
		List<Long> cart = (List<Long>) httpsession.getAttribute("products");
		List<String> quantities = new ArrayList<String>();
		for (Long id : cart) {
			Product pr = productDAO.findById(id);
			String quantity = request.getParameter("quantity[" + id + "]");
			quantities.add(quantity);
			pr.setName(pr.getName() + " X " + quantity);
			Double qu = Double.parseDouble(quantity);
			pr.setPrice(pr.getPrice() * qu);
			products.add(pr);

		}

		httpsession.setAttribute("quantity", quantities);

		double total = 0;
		for (Product pro : products) {
			total += pro.getPrice();
		}

		model.addAttribute("total", total);

		model.addAttribute("products", products);
		model.addAttribute("person", userDAO.findById((Long) httpsession.getAttribute("userId")));
		User user = new User();
		model.addAttribute("user", user);
		return "billing";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String checkOut(Model model) {
		User usr1 = userDAO.findById((Long) httpsession.getAttribute("userId"));
		Order ord1 = new Order(new Date(), 0, usr1, Status.PENDING);
		List<OrderLine> orderLines = new ArrayList<OrderLine>();

		List<Long> cart = (List<Long>) httpsession.getAttribute("products");
		List<String> quantities = (List<String>) httpsession.getAttribute("quantity");

		for (int i = 0; i < cart.size(); i++) {
			orderLines.add(new OrderLine(Integer.parseInt(quantities.get(i)), productDAO.findById(cart.get(i)), ord1));
		}
		for (OrderLine ord : orderLines) {
			ord1.addOrderLines(ord);
		}

		orderDAO.create(ord1);
		System.out.println(ord1.toString());
		for (OrderLine ord : orderLines) {
			orderlineDAO.create(ord);
		}

		User user = new User();
		model.addAttribute("user", user);
		httpsession.removeAttribute("products");
		httpsession.removeAttribute("total");
		httpsession.removeAttribute("quantity");
		httpsession.setAttribute("products", new ArrayList<Integer>());
		httpsession.setAttribute("quantity", new ArrayList<String>());
		return "success";
	}

	@ModelAttribute("categories")
	public List<Category> getCats() {
		return categoryDAO.findAll();
	}

	// @ModelAttribute("user")
	// public User getUser() {
	// return new User();
	// }
	@ModelAttribute("siteSettings")
	public List<SiteSetting> getSiteSetting() {
		return siteSettingDAOImpl.findAll();

	}

}
