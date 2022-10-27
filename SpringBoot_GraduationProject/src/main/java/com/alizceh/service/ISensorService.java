package com.alizceh.service;

import com.alizceh.domain.Sensor;
import com.alizceh.domain.Users;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.stereotype.Service;

public interface ISensorService extends IService<Sensor> {
    Boolean insertSensor(Sensor sensor);
    IPage<Sensor> getPage(Integer current, Integer pageSize);
    IPage<Sensor> getPage(Integer current, Integer pageSize,Sensor sensor);
}
