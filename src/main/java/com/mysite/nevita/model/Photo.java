package com.mysite.nevita.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Photo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String fileName;
    
    @Lob
    private byte[] data;

	public void setData(byte[] bytes) {
		// TODO Auto-generated method stub
		
	}

	public void setFileName(String originalFilename) {
		// TODO Auto-generated method stub
		
	}
}