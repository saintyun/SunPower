package kr.smhrd.Skintype;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.service.ProductsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ProductsService prod_service;
	
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		
		model.addAttribute("list", prod_service.getList());
		return "index";
	}

	
	
}