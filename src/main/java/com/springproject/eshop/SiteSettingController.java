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


import com.springproject.eshop.domain.SiteSetting;
import com.springproject.eshop.domain.SiteStatus;
import com.springproject.eshop.service.ISiteSettingDAO;

@Controller
public class SiteSettingController {
	@Resource
	private ISiteSettingDAO siteSettingDAOImpl;
	
	@RequestMapping(value = "/admin/siteSetting", method = RequestMethod.GET)
	public String adminSiteSetting(Model model) {
		List<SiteSetting> siteSettings= siteSettingDAOImpl.findAll();
		
		model.addAttribute("siteSettings",siteSettings);
		model.addAttribute("page", "siteSetting/list.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addSiteSetting", method = RequestMethod.GET)
	public String adminAddSiteSetting(Model model) {
		SiteSetting ss = new SiteSetting();
		model.addAttribute(ss);
		initModelList(model);
		model.addAttribute("page", "siteSetting/add.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addSiteSetting", method = RequestMethod.POST)
	public String saveAddSiteSetting(@ModelAttribute("siteSetting") SiteSetting siteSetting, Model model,
			final RedirectAttributes redirectAttributes) {
		//System.out.println(category.getName());
		siteSettingDAOImpl.create(siteSetting);
		model.addAttribute("page", "siteSetting/list.jsp");
		redirectAttributes.addFlashAttribute("message", "SiteSetting Added Successfully..");
		return "redirect:/admin/siteSetting";
	}
	
	@RequestMapping(value = "/admin/editSiteSetting/{id}", method = RequestMethod.GET)
	public String editAdminSiteSetting(Model model, @PathVariable long id) {
		
		SiteSetting ss = siteSettingDAOImpl.findById(id);
		model.addAttribute(ss);
		model.addAttribute("page", "siteSetting/add.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/editSiteSetting/{id}", method = RequestMethod.POST)
	public String updateAdminSiteSetting(Model model, @PathVariable long id, @ModelAttribute("siteSetting") SiteSetting siteSetting, final RedirectAttributes redirectAttributes) {
		
		SiteSetting ss = siteSettingDAOImpl.findById(id);
		ss.setEmail(siteSetting.getEmail());
		ss.setAddress(siteSetting.getAddress());
		ss.setFacebook(siteSetting.getFacebook());
		ss.setTwitter(siteSetting.getTwitter());
		ss.setgPlus(siteSetting.getgPlus());
		ss.setYoutube(siteSetting.getYoutube());
		ss.setSiteStatus(siteSetting.getSiteStatus());
		ss.setPhoneNo(siteSetting.getPhoneNo());
		siteSettingDAOImpl.update(ss);
		redirectAttributes.addFlashAttribute("message","Site Setting is updated successfully");
		
		return "redirect:/admin/siteSetting";
	}
	
	@RequestMapping(value = "/admin/deleteSiteSetting/{id}", method = RequestMethod.GET)
	public String deleteAdminCategory(Model model, @PathVariable long id, final RedirectAttributes redirectAttributes) {
		
		SiteSetting ss = siteSettingDAOImpl.findById(id);
		siteSettingDAOImpl.delete(ss);
		redirectAttributes.addFlashAttribute("message","SiteSetting is deleted successfully");
		
		return "redirect:/admin/siteSetting";
	}
	private void initModelList(Model model) {
//      List<String> rolesList = new ArrayList<String>();
      SiteStatus[] statusList =SiteStatus.class.getEnumConstants();
//      rolesList.add("ADMIN");
//      rolesList.add("MEMBER");
//      rolesList.add("GUEST");
      model.addAttribute("statuss", statusList);
  }
}
