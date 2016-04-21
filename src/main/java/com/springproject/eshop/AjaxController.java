package com.springproject.eshop;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.service.ICategoryDAO;

/**
 * Handles requests for the application home page.
 */
@RestController
@SuppressWarnings("unchecked")
public class AjaxController {
	@Resource
	private ICategoryDAO categoryDAO;
	@Autowired
	private HttpSession httpSession;

	private static final Logger logger = LoggerFactory.getLogger(AjaxController.class);

	@ResponseBody
	@RequestMapping(value = "/addCart/{id}", method = RequestMethod.GET)
	public String addCart(Locale locale, Model model, @PathVariable long id) {
		JSONObject obj = new JSONObject();
		if (httpSession.getAttribute("userId") == null || httpSession.getAttribute("userId") == "") {
			obj.put("login", 0);
		} else {
			obj.put("login", 1);
			List<Long> cart = (List<Long>) httpSession.getAttribute("products");
			if (!cart.contains(id)) {
				cart.add(id);
			}
			httpSession.setAttribute("products", cart);
			httpSession.setAttribute("total",cart.size());
			obj.put("products", cart);
		}

		return obj.toJSONString();
	}
	
	@ResponseBody
	@RequestMapping(value = "/removeCart/{id}", method = RequestMethod.GET)
	public String removeCart(Locale locale, Model model, @PathVariable long id) {
		JSONObject obj = new JSONObject();
		if (httpSession.getAttribute("userId") == null || httpSession.getAttribute("userId") == "") {
			obj.put("login", 0);
		} else {
			obj.put("login", 1);
			List<Long> cart = (List<Long>) httpSession.getAttribute("products");
			if (cart.contains(id)) {
				cart.remove(id);
			}
			httpSession.setAttribute("products", cart);
			httpSession.setAttribute("total",cart.size());
			obj.put("products", cart);
		}

		return obj.toJSONString();
	}

}
