package com.mysite.nevita.controller;

import com.mysite.nevita.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller  // @RestController 대신 @Controller 사용
@RequestMapping("/photo")
public class PhotoUploadController {

    @Autowired
    private PhotoService photoService;

    // JSP 파일을 반환하는 GET 메서드
    @GetMapping("/upload")
    public String showPhotoUploadPage() {
        // "photoUpload"라는 이름의 JSP 파일을 반환합니다.
        return "photoUpload";
    }

    // 이미지 파일을 처리하는 POST 메서드
    @PostMapping("/upload")
    public ResponseEntity<?> uploadPhoto(@RequestParam("image") MultipartFile imageFile) {
        try {
            // Flask 서버로 이미지를 전송하고 YOLO 결과값을 받아옴
            String result = photoService.sendPhotoToFlask(imageFile);
            return ResponseEntity.ok(result);  // YOLO 처리 결과를 그대로 반환
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error: " + e.getMessage());
        }
    }
}
