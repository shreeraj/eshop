package com.springproject.eshop;

import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Product;
import com.springproject.eshop.service.IImageDAO;
import com.springproject.eshop.service.IProductDAO;

@Controller
public class ImageController {
	
	@Resource
	IImageDAO imageDao;
	@Resource
	IProductDAO productDao;
	
	@RequestMapping(value = "/admin/image/{id}", method = RequestMethod.GET)
	public String adminCategory(Model model, @PathVariable long id) {
		//Product product = productDao.findById(id);
		List<Image> images = imageDao.findByProduct(id);
		//System.out.println("image list..." + images.toString());
//		for(Image image : images){
//			byte[] encodeBase64 = Base64.encodeBase64(image);
//		}
//		
//		String base64Encoded = new String(encodeBase64, "UTF-8");
//		mav.addObject("galleria", usersService.getAllFoto());
		
		model.addAttribute("images", images);
		model.addAttribute("page","image/list.jsp");
		return "admin/index";
	}
//	
//	@RequestMapping(value = "/admin/addImage", method = RequestMethod.GET)
//	public String adminAddImage(Model model) {
//		Image img = new Image();
//		model.addAttribute(img);
//		model.addAttribute("page","image/add.jsp");
//		return "admin/index";
//	}
}
