package com.springproject.eshop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.eshop.domain.Stock;
@Controller
public class StockController {
	@RequestMapping(value = "/admin/stock", method = RequestMethod.GET)
	public String adminStock(Model model) {
		model.addAttribute("page","stock/all");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/addStock", method = RequestMethod.GET)
	public String adminAddStock(Model model) {
		Stock stock = new Stock();
		model.addAttribute(stock);
		model.addAttribute("page","stock/add.jsp");
		return "admin/index";
	}
}
