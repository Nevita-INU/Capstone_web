package com.mysite.nevita.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.MultipartBodyBuilder;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpMethod;

import java.io.IOException;

@Service
public class PhotoService {

    private final RestTemplate restTemplate = new RestTemplate();
    private final String flaskServerUrl = "http://localhost:5000/process-image"; // Flask 서버 URL

    public String sendPhotoToFlask(MultipartFile file) {
        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.MULTIPART_FORM_DATA);

            // 파일을 Resource로 변환
            Resource resource = new ByteArrayResource(file.getBytes()) {
                @Override
                public String getFilename() {
                    return file.getOriginalFilename();
                }
            };

            // MultipartBodyBuilder 사용하여 multipart 요청 생성
            MultipartBodyBuilder builder = new MultipartBodyBuilder();
            builder.part("image", resource); // "image"라는 이름으로 파일 전송

            // 요청 엔티티 생성
            MultiValueMap<String, HttpEntity<?>> multipartRequest = builder.build();
            HttpEntity<MultiValueMap<String, HttpEntity<?>>> requestEntity = new HttpEntity<>(multipartRequest, headers);

            // Flask 서버로 POST 요청
            ResponseEntity<String> responseEntity = restTemplate.exchange(
                    flaskServerUrl,
                    HttpMethod.POST,
                    requestEntity,
                    String.class
            );

            // 성공적으로 결과를 받으면 반환
            return responseEntity.getBody();
        } catch (IOException e) {
            throw new RuntimeException("파일을 Flask 서버로 전송하는 중 오류가 발생했습니다.", e);
        }
    }
}
