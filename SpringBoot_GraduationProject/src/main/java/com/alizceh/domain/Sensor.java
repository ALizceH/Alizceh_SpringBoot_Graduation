package com.alizceh.domain;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Sensor {
    private Integer id;
    private String type;
    private String createTime;
    private Double sensorValue;

    public Sensor(String type, String createTime, Double sensorValue) {
        this.type = type;
        this.createTime = createTime;
        this.sensorValue = sensorValue;
    }
}
