package com.springproject.eshop;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Order;
import com.springproject.eshop.domain.OrderLine;
import com.springproject.eshop.domain.Product;
import com.springproject.eshop.domain.Status;
import com.springproject.eshop.domain.User;
import com.springproject.eshop.service.IImageDAO;
import com.springproject.eshop.service.IOrderDAO;
import com.springproject.eshop.service.IOrderLineDAO;
import com.springproject.eshop.service.IProductDAO;
import com.springproject.eshop.service.IUserDAO;
@Controller
public class InjectSampleController {
	@Resource
	private IUserDAO userDAO;
	@Resource
	private IProductDAO productDAO;
	@Resource
	private IOrderDAO orderDAO;
	@Resource
	private IImageDAO imageDAO;
	@Resource
	private IOrderLineDAO orderLineDAO;
	@RequestMapping(value = "/admin/injectData", method = RequestMethod.GET)
	public String adminOrder(Model model,final RedirectAttributes redirectAttributes) {
		injectData();
		redirectAttributes.addFlashAttribute("message","Data successfully injected");
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
	public String adminCategory(Model model) {
		List<Order> orders = orderDAO.findAll();

		model.addAttribute("orders", orders);
		model.addAttribute("page", "order/list.jsp");
		return "admin/index";
	}
	@RequestMapping(value = "/admin/viewOrder/{id}", method = RequestMethod.GET)
	public String viewOrders(Model model, @PathVariable long id) {

		List<OrderLine> orderLists = orderLineDAO.findByOrderId(id);
		Map<Product,Image> images = new HashMap<Product,Image>();
		for(OrderLine ol : orderLists)
			images.put(ol.getProduct(), imageDAO.findByProduct(ol.getProduct().getProductId()).get(0));

		model.addAttribute("image",images);
		
		model.addAttribute("orderLists", orderLists);
		model.addAttribute("page", "order/orderLineList.jsp");
		return "admin/index";
	}
	public void injectData(){
		User usr1 = userDAO.findById(37);
		
		Product prod1 = productDAO.findById(40);
		Product prod2 =  productDAO.findById(43);
		Product prod3 =  productDAO.findById(46);
		Product prod4 =  productDAO.findById(53);
		Product prod5 =  productDAO.findById(55);

		Order ord1 = new Order(new Date(),0,usr1,Status.PENDING);

		OrderLine ol1 = new OrderLine(3,prod1,ord1);
		OrderLine ol2 = new OrderLine(1,prod2,ord1);
		OrderLine ol3 = new OrderLine(2,prod3,ord1);
		
		ord1.addOrderLines(ol1);
		ord1.addOrderLines(ol2);
		ord1.addOrderLines(ol3);

		orderDAO.create(ord1);
		orderLineDAO.create(ol1);
		orderLineDAO.create(ol2);
		orderLineDAO.create(ol3);
	}
}
