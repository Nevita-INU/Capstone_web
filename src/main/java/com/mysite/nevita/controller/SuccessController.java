package com.mysite.nevita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SuccessController {

    @GetMapping("/success")
    public String success() {
        // 여기에 필요한 로직을 추가할 수 있습니다.
        // 예: 센서 데이터를 가져오거나 처리하는 로직
    	System.out.println("success method called");
        // "sensorCheck"라는 이름의 뷰(JSP 파일)를 반환합니다.
        return "success";
    }
}