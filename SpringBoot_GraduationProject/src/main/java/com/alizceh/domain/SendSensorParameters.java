package com.alizceh.domain;

import lombok.Data;

@Data
public class SendSensorParameters {
    private Integer deviceId;
    private String sensorName;
    private String StartDate;
    private String Sort;
    private Integer PageSize;
    private String Func;

    public SendSensorParameters(Integer deviceId, String startDate, String Sort, Integer PageSize) {
        this.deviceId = deviceId;
        StartDate = startDate;
        this.Sort = Sort;
        this.PageSize = PageSize;
    }
}
