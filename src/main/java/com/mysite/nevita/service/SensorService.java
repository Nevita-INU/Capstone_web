package com.mysite.nevita.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mysite.nevita.repository.SensorRepository;

@Service
public class SensorService {

    @Autowired
    private SensorRepository sensorRepository;

    public boolean isProximityOne() {
        // proximity 값이 1인 레코드가 있는지 확인
        return sensorRepository.existsByProximity(1);
    }
}
