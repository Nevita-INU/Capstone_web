package com.mysite.nevita.controller;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import com.mysite.nevita.service.SensorService;

@Controller
public class SensorCheckController {

    @Autowired
    private SensorService sensorService;

    @GetMapping("/sensorCheck")
    public String sensorCheck() {
        return "sensorCheck";
    }

    @GetMapping("/sensorCheckResult")
    public ModelAndView checkSensorAndRedirect() {
        ModelAndView modelAndView = new ModelAndView();

        if (sensorService.isProximityOne()) {
            // proximity가 1이면 photoUpload.jsp로 리다이렉트
            modelAndView.setViewName("redirect:/photo/upload");
        } else {
            // proximity가 1이 아니면 다시 sensorCheck 페이지로
            modelAndView.setViewName("sensorCheck");
            modelAndView.addObject("message", "Proximity is not 1");
        }

        return modelAndView;
    }
}