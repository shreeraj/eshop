package com.springproject.eshop;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.eshop.domain.Slider;
import com.springproject.eshop.service.ISliderDAO;

@Controller
public class SliderController {
	@Resource
	private ISliderDAO sliderDAOImpl;
	
	@RequestMapping(value = "/admin/slider", method = RequestMethod.GET)
	public String adminSlider(Model model) {
		List<Slider> sliders= sliderDAOImpl.findAll();
		
		model.addAttribute("sliders",sliders);
		model.addAttribute("page", "slider/list.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "/admin/addSlider", method = RequestMethod.GET)
	public String adminAddSlider(Model model) {
		Slider sli = new Slider();
		model.addAttribute(sli);
		model.addAttribute("page", "slider/add.jsp");
		return "admin/index";
	}

	@RequestMapping(value = "admin/addSlider", method = RequestMethod.POST)
	public String saveAddSlider(@ModelAttribute("slider") Slider slider, Model model,
			@RequestParam("file") MultipartFile[] file,
			final RedirectAttributes redirectAttributes,BindingResult result) throws IOException{
		
		slider.setImage(file[0].getBytes());
		sliderDAOImpl.create(slider);
		model.addAttribute("page", "slider/list.jsp");
		redirectAttributes.addFlashAttribute("message", "Slider Added Successfully..");
		return "redirect:/admin/slider";
	}
	
	@RequestMapping(value = "/admin/editSlider/{id}", method = RequestMethod.GET)
	public String editAdminSlider(Model model, @PathVariable long id) {
		
		Slider sli = sliderDAOImpl.findById(id);
		model.addAttribute(sli);
		model.addAttribute("page", "slider/add.jsp");
		return "admin/index";
	}
	
	@RequestMapping(value = "/admin/editSlider/{id}", method = RequestMethod.POST)
	public String updateAdminSlider(Model model, @PathVariable long id, @ModelAttribute("slider") Slider slider, final RedirectAttributes redirectAttributes) {
		
		Slider sli = sliderDAOImpl.findById(id);
		sli.setDescription(slider.getDescription());
		sli.setTitle(slider.getTitle());
		sliderDAOImpl.update(sli);
		redirectAttributes.addFlashAttribute("message","Slider is updated successfully");
		
		return "redirect:/admin/slider";
	}
	
	@RequestMapping(value = "/admin/deleteSlider/{id}", method = RequestMethod.GET)
	public String deleteAdminSlider(Model model, @PathVariable long id, final RedirectAttributes redirectAttributes) {
		
		Slider sli = sliderDAOImpl.findById(id);
		sliderDAOImpl.delete(sli);
		redirectAttributes.addFlashAttribute("message","Slider is deleted successfully");
		
		return "redirect:/admin/slider";
	}
}
