package com.mysite.nevita.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Service
public class PhotoService {

    // Flask 서버 URL
    private static final String FLASK_SERVER_URL = "http://localhost:5000/process-image";

    // Flask 서버로 이미지를 보내고 결과를 받아옴
    public String sendPhotoToFlask(MultipartFile imageFile) throws IOException {
        RestTemplate restTemplate = new RestTemplate(new HttpComponentsClientHttpRequestFactory());

        // 헤더 설정 (multipart/form-data)
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);

        // 이미지 파일 전송 설정
        Map<String, Object> body = new HashMap<>();
        body.put("image", imageFile.getResource());

        // 요청 본문과 헤더를 포함한 엔티티 생성
        HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(body, headers);

        // Flask 서버로 POST 요청
        ResponseEntity<String> response = restTemplate.exchange(FLASK_SERVER_URL, HttpMethod.POST, requestEntity, String.class);

        // 성공적으로 결과를 받으면 반환
        if (response.getStatusCode() == HttpStatus.OK) {
            return response.getBody(); // YOLO 결과(JSON) 반환
        } else {
            throw new RuntimeException("Failed to get response from Flask server");
        }
    }
}
