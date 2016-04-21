package com.springproject.eshop;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Coupon;
import com.springproject.eshop.service.ICouponDAO;


@Controller
public class CouponController {
	@Resource
	private ICouponDAO couponDAOImpl;
	
	@RequestMapping(value = "/admin/coupon", method = RequestMethod.GET)
	public String adminCoupon(Model model) {
		List<Coupon> coupons= couponDAOImpl.findAll();
		
		model.addAttribute("coupons",coupons);
		model.addAttribute("page", "coupon/list.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addCoupon", method = RequestMethod.GET)
	public String adminAddCoupon(Model model) {
		Coupon cpn = new Coupon();
		model.addAttribute(cpn);
		model.addAttribute("page", "coupon/add.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addCoupon", method = RequestMethod.POST)
	public String saveAddCoupon(@ModelAttribute("coupon") Coupon coupon, Model model,
			final RedirectAttributes redirectAttributes) {
		//System.out.println(category.getName());
		couponDAOImpl.create(coupon);
		model.addAttribute("page", "coupon/list.jsp");
		redirectAttributes.addFlashAttribute("message", "Coupon Added Successfully..");
		return "redirect:/admin/coupon";
	}
	
	@RequestMapping(value = "/admin/editCoupon/{id}", method = RequestMethod.GET)
	public String editAdminCoupon(Model model, @PathVariable long id) {
		
		Coupon cpn = couponDAOImpl.findById(id);
		model.addAttribute(cpn);
		model.addAttribute("page", "coupon/add.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/editCoupon/{id}", method = RequestMethod.POST)
	public String updateAdminCoupon(Model model, @PathVariable long id, @ModelAttribute("coupon") Coupon coupon, final RedirectAttributes redirectAttributes) {
		
		Coupon cpn = couponDAOImpl.findById(id);
		cpn.setAmount(coupon.getAmount());
		cpn.setFlag(coupon.isFlag());
		cpn.setRemarks(coupon.getRemarks());
		couponDAOImpl.update(cpn);
		redirectAttributes.addFlashAttribute("message","Coupon is updated successfully");
		
		return "redirect:/admin/coupon";
	}
	
	@RequestMapping(value = "/admin/deleteCoupon/{id}", method = RequestMethod.GET)
	public String deleteAdminCoupon(Model model, @PathVariable long id, final RedirectAttributes redirectAttributes) {
		
		Coupon cpn = couponDAOImpl.findById(id);
		couponDAOImpl.delete(cpn);
		redirectAttributes.addFlashAttribute("message","Coupon is deleted successfully");
		
		return "redirect:/admin/coupon";
	}

}
