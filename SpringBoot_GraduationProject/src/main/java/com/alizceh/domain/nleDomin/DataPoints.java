package com.alizceh.domain.nleDomin;

import lombok.Data;

import java.util.List;

@Data
public class DataPoints {
    private String ApiTag;
    private List<PointDTO> valueList;
}
