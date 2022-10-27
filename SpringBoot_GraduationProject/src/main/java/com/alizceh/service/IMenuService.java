package com.alizceh.service;

import com.alizceh.domain.Menu;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IMenuService extends IService<Menu> {
    IPage<Menu> getPage(Integer currentPage, Integer pageSize, Menu menu);
    List<Menu> findMenus(String name);
}
