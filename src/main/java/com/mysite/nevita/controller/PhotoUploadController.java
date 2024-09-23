package com.mysite.nevita.controller;

import com.mysite.nevita.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller  // @Controller로 변경하여 JSP 반환 가능
@RequestMapping("/photo")
public class PhotoUploadController {

    @Autowired
    private PhotoService photoService;

    // JSP 파일을 반환하는 GET 메서드
    @GetMapping("/upload")
    public String showPhotoUploadPage() {
        // "photoUpload"라는 이름의 JSP 파일을 반환합니다.
        return "photoUpload";  // src/main/webapp/WEB-INF/views/photoUpload.jsp에 위치해야 함
    }

    // 여러 파일을 처리할 수 있도록 List<MultipartFile>로 변경
    @PostMapping("/upload")
    @ResponseBody  // 이 부분은 JSON 응답을 반환하기 위해 사용
    public ResponseEntity<String> uploadPhoto(@RequestPart("image") List<MultipartFile> files) {  // 'image'로 변경
        try {
            // 첫 번째 파일을 선택 (여러 파일 처리 가능)
            MultipartFile imageFile = files.get(0);

            // Flask 서버로 이미지를 전송하고 YOLO 결과값을 받아옴
            String result = photoService.sendPhotoToFlask(imageFile);
            System.out.println("확인");
            System.out.println(result);

            // 성공적으로 처리된 결과를 JSON 응답으로 반환
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            // 에러 발생 시 JSON 형식으로 에러 메시지 반환
            System.err.println("사진 업로드 실패: " + e.getMessage());
            return ResponseEntity.status(500).body("사진 업로드 실패: " + e.getMessage());
        }
    }
}
