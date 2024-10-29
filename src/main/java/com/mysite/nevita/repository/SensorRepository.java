package com.mysite.nevita.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mysite.nevita.model.Sensor;

public interface SensorRepository extends JpaRepository<Sensor, Long> {
    boolean existsByProximity(int proximity);
}
