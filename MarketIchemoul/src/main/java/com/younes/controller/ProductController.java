package com.younes.controller;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.younes.model.Product;
import com.younes.exception.MyResourceNotFoundException;
import com.younes.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Value("${uploadDir}")
	private String uploadFolder;

	@Autowired
	private ProductService productService;

	private static final Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@GetMapping("/productdetails")
	String showProductDetails(@RequestParam("code") String code, Product product,
			Model model) {
		try {
			log.info("Code :: " + code);
			if (code != null && code.startsWith("P")) {
				product = productService.getProductByCode(code);
				log.info("products :: " + product);
				if (product != null) {
					model.addAttribute("product", product);
					return "productdetails";
				}
				return "redirect:/home";
			}
		return "redirect:/home";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}	
	}

	@GetMapping("/all")
	String show(Model map) {
		List<Product> product = productService.getAllActiveProducts();
		
		
		map.addAttribute("products", product);
		return "product_all";
	}

	@PostMapping("/search")
	String searchProducts(@RequestParam(value = "keyword", required = true) String keyword, Model model) {
		try {
			if (keyword != null) {
				List<Product> products = productService.searchProducts(keyword.trim());
				log.info("products :: "+products);
				model.addAttribute("products", products);
				return "search";
			}
			return "redirect:/home";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}
	}
	


	@ExceptionHandler(MyResourceNotFoundException.class)
	public ResponseEntity<?> handleStorageFileNotFound(MyResourceNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}
}
