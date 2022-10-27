package com.alizceh.dao;

import com.alizceh.domain.Sensor;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SensorDao extends BaseMapper<Sensor> {
}
