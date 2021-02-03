package com.younes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/customer","/product","/customer/product",})
public class MySessionController {

	@GetMapping(value="mysession")
	public String mysession() {
		return "mysession";
	}
}
