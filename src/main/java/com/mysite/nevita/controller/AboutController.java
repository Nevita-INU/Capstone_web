package com.mysite.nevita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController {

    @GetMapping("/about")
    public String contact() {
    	System.out.println("/about method called");
        return "/about";
    }
}
//오류체크