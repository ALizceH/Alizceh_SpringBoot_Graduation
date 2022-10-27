package com.alizceh.service.impl;

import com.alizceh.dao.SensorDao;
import com.alizceh.dao.UserDao;
import com.alizceh.domain.Sensor;
import com.alizceh.domain.Users;
import com.alizceh.service.ISensorService;
import com.alizceh.service.IUserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ISensorServiceImpl extends ServiceImpl<SensorDao, Sensor> implements ISensorService {

    @Autowired
    private SensorDao sensorDao;

    @Override
    public Boolean insertSensor(Sensor sensor) {
        Boolean flag = false;
        if (sensor.getType()!=null&&sensor.getCreateTime()!=null&&sensor.getSensorValue()!=null){
            flag = sensorDao.insert(sensor)>0;
        }
        return flag;
    }

    @Override
    public IPage<Sensor> getPage(Integer currentPage, Integer pageSize) {
        IPage page = new Page(currentPage,pageSize);
        sensorDao.selectPage(page,null);
        return page;
    }

    @Override
    public IPage<Sensor> getPage(Integer current, Integer pageSize, Sensor sensor) {
        System.out.println(sensor);
        LambdaQueryWrapper<Sensor> lqw = new LambdaQueryWrapper<>();
        lqw.like(Strings.isNotEmpty(sensor.getType()),Sensor::getType,sensor.getType());
        IPage page = new Page(current,pageSize);
        sensorDao.selectPage(page,lqw);
        return page;
    }
}
