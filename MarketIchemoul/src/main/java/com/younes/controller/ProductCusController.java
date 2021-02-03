package com.younes.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.younes.model.Product;
import com.younes.exception.MyResourceNotFoundException;
import com.younes.service.ProductAdmService;
import com.younes.service.ProductService;

@Controller
@RequestMapping("/customer/product")
public class ProductCusController {

	@Value("${uploadDir}")
	private String uploadFolder;

	@Autowired
	private ProductService productService;

	private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	ProductAdmService productAdmSer;
	
	
	
	@GetMapping("/add")
	public String addProduct(HttpSession session) {
		String aemail = (String) session.getAttribute("email");
		if(aemail == null) {
			return "redirect:/index";
		}
		return "add_product";
	}



	@PostMapping("/saveProduct")
	public @ResponseBody ResponseEntity<?> createProduct(@RequestParam("name") String name,
			@RequestParam("active") String status, @RequestParam("price") double price, @RequestParam("mrp_price") double mrpPrice,
			@RequestParam("description") String description, Model model, HttpServletRequest request,
			final @RequestParam("image") MultipartFile file) {
		try {   
			// String uploadDirectory = System.getProperty("user.dir") + uploadFolder;
			String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
			log.info("uploadDirectory:: " + uploadDirectory);
			String fileName = file.getOriginalFilename();
			String filePath = Paths.get(uploadDirectory, fileName).toString();
			log.info("FileName: " + file.getOriginalFilename()); 
			 
			if (fileName == null || fileName.contains("..")) { 
				model.addAttribute("invalid", "Sorry! Filename contains invalid path sequence \t" + fileName);
				return new ResponseEntity<>("Sorry! Filename contains invalid path sequence " + fileName,
						HttpStatus.BAD_REQUEST);
			}
			String[] names = name.split(",");
			String code = "";
			Long count = productAdmSer.countProduct();
			log.info("count:: " + count);
			if (count < 9) {
				code = "P0" + (count + 1);
			} else {
				code = "P" + (count + 1);
				log.info("lastValue : " + code);
			}
			String[] descriptions = description.split(",");
			String[] statuses = status.split(",");
			boolean active = Boolean.valueOf(statuses[0]);
			Date createDate = new Date();
			log.info("Name: " + names[0] + " " + filePath);
			log.info("description: " + descriptions[0]);
			log.info("Code: " + code);
			log.info("status: " + statuses[0]);
			log.info("price: " + price);
			try {
				File dir = new File(uploadDirectory);
				if (!dir.exists()) {
					log.info("Folder Created");
					dir.mkdirs();
				}
				// Save the file locally
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
				stream.write(file.getBytes());
				stream.close();
			} catch (Exception e) {
				log.info("in catch");
				e.printStackTrace();
			}
			String imageData = uploadFolder + File.separator + fileName;
			Product product = new Product();
			product.setName(names[0]);
			product.setCode(code);
			product.setImage(imageData);
			product.setMrpPrice(mrpPrice);
			product.setPrice(price);
			product.setDescription(descriptions[0]);
			product.setActive(active);
			product.setCreateDate(createDate);
			boolean flag = productService.saveProduct(product);
			if (flag) {
				log.info("HttpStatus===" + new ResponseEntity<>(HttpStatus.OK));
				
				return new ResponseEntity<>("Product Added Successfully.", HttpStatus.OK);
			}
			return new ResponseEntity<>("Oops! Something Went Wrong.", HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			e.printStackTrace();
			log.info("Exception: " + e);
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}

	@GetMapping("/view")
	public String view(Model map, HttpServletRequest request,HttpSession session) {
		String aemail = (String) session.getAttribute("email");
		 
		if(aemail == null) {
			return "redirect:/index";
		}
		 Calendar cal=Calendar.getInstance();
		    
		DateFormat myFormat=new SimpleDateFormat("yyyy-MM-dd"); //"yyyy-MM-dd HH:mm:ss" pattern="dd-MM-yyyy"
		DateFormat myFormat2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		List<Product> productList = productService.getAllActiveProducts();
		Date todayt=cal.getTime();
	    Date create_date,create_date2=null;
	    String m,m2=null;
	    long day,day2,hour,minute=0;
	    try {
	    	for(Product p:productList) {
	  		  m=myFormat.format(p.getCreateDate());
	  		 m2=myFormat2.format(p.getCreateDate());
	  		  create_date=myFormat.parse(m);
	  		  create_date2=myFormat.parse(m);
	  		long diff=todayt.getTime()-create_date.getTime();
	  		long diff2=todayt.getTime()-create_date2.getTime();
	    	     day=diff/(1000*60*60*24);
	    	     day2=diff2/(1000*60*60*24);
	    	     hour=day2*24;
	    	     minute=hour*60;		 
	    	log.info("day is:"+day);
	    	
	    		p.setDay(day);
	    		p.setHour(hour);
	    		p.setMinute(minute);
	    	}
	    	
	    	
	    }catch (Exception ex) {
	           ex.printStackTrace();
	       }
		
		 map.addAttribute("products", productList);

		return "index";
	}


	@ExceptionHandler(MyResourceNotFoundException.class)
	public ResponseEntity<?> handleStorageFileNotFound(MyResourceNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}
}

