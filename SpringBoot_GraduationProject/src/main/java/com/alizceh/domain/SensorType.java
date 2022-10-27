package com.alizceh.domain;


import lombok.Data;

@Data
public class SensorType {
    private Integer id;
    private String sensorType;

    public SensorType(String sensorType) {
        this.sensorType = sensorType;
    }
}
