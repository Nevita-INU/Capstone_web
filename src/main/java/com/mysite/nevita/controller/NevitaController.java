package com.mysite.nevita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NevitaController {

	@RequestMapping("/nevita") 
	public String nevita() {
		return "index";
	} 
}