package com.mysite.nevita;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class PhotoUploadController {
    @Autowired
    private PhotoService photoService;

    @GetMapping("/photoUpload")
    public String showPhotoUploadPage() {
        return "photoUpload";
    }

    @PostMapping("/photoUpload")
    public String handlePhotoUpload(@RequestParam("file") MultipartFile file) {
        try {
            photoService.savePhoto(file);
            return "redirect:/photoUpload?success";
        } catch (IOException e) {
            return "redirect:/photoUpload?error";
        }
    }
}
