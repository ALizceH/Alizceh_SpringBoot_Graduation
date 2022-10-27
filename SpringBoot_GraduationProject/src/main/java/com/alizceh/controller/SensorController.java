package com.alizceh.controller;


import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.alizceh.controller.utils.R;
import com.alizceh.domain.Sensor;
import com.alizceh.domain.Users;
import com.alizceh.service.ISensorService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

/*
* 传感器Controller
* */

@RestController
@RequestMapping("/sensor")
public class SensorController {

    @Autowired
    private ISensorService iSensorService;

//    @PostMapping
//    public R save(Sensor sensor){
//        return new R(iSensorService.insertSensor(sensor));
//    }

//    @DeleteMapping("{id}")
//    public R delete(@PathVariable Integer id){
//        return new R(iSensorService.removeById(id));
//    }

//    @PutMapping
//    public R update(@RequestBody Sensor sensor){
//        return new R(iSensorService.updateById(sensor));
//    }

    @GetMapping
    public R getAllSensors(){
        List<Sensor> sensorList = iSensorService.list();
        if(sensorList!=null){
            return R.success(sensorList);
        }else
        return R.error();
    }

//    @GetMapping("{id}")
//    public R getUserById(@PathVariable Integer id){
//        return new R(true,iSensorService.getById(id));
//    }

    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable Integer currentPage,@PathVariable Integer pageSize,Sensor sensor){
        IPage<Sensor> page = iSensorService.getPage(currentPage, pageSize,sensor);
        if(currentPage>page.getPages()){
            page = iSensorService.getPage(currentPage, pageSize,sensor);
        }
        if(page!=null) {
            return R.success(page);
        }
        return R.error();
    }

    @GetMapping("/export")
    public void sensorValueExport(HttpServletResponse response) throws Exception {
        //从数据库中查询出所有的数据
        List<Sensor> sensorList = iSensorService.list();
        //从内存中操作，写到浏览器
        ExcelWriter writer = ExcelUtil.getWriter(true);
        //自定义标题别名
        writer.addHeaderAlias("type","传感器名称");
        writer.addHeaderAlias("createTime","创建时间");
        writer.addHeaderAlias("sensorValue","传感器数据");

        //一次性写出list内对象到Excel，使用默认样式，强制输出标题
        writer.write(sensorList,true);

        //设置浏览器相应格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("传感器信息", "UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}
