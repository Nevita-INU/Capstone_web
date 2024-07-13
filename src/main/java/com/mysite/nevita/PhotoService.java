package com.mysite.nevita;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;

@Service
public class PhotoService {
    @Autowired
    private PhotoRepository photoRepository;

    public void savePhoto(MultipartFile file) throws IOException {
        Photo photo = new Photo();
        photo.setFileName(file.getOriginalFilename());
        photo.setData(file.getBytes());
        photoRepository.save(photo);
    }
}