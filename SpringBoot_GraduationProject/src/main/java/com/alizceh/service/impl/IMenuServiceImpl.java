package com.alizceh.service.impl;


import cn.hutool.core.util.StrUtil;
import com.alizceh.dao.MenuDao;
import com.alizceh.domain.Menu;
import com.alizceh.domain.Role;
import com.alizceh.service.IMenuService;
import com.alizceh.service.IRoleService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class IMenuServiceImpl extends ServiceImpl<MenuDao, Menu> implements IMenuService {

    @Autowired
    private MenuDao menuDao;

    @Override
    public IPage<Menu> getPage(Integer currentPage, Integer pageSize, Menu menu) {
        System.out.println(menu);
        LambdaQueryWrapper<Menu> lqw = new LambdaQueryWrapper<>();
        lqw.like(Strings.isNotEmpty(menu.getName()),Menu::getName,menu.getName());
        IPage page = new Page(currentPage,pageSize);
        menuDao.selectPage(page,lqw);
        return page;
    }


    @Override
    public List<Menu> findMenus(String name) {
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("sort_num");
        if (StrUtil.isNotBlank(name)) {
            queryWrapper.like("name", name);
        }
        // 查询所有数据
        List<Menu> list = list(queryWrapper);
        // 找出pid为null的一级菜单
        List<Menu> parentNodes = list.stream().filter(menu -> menu.getPid() == null).collect(Collectors.toList());
        // 找出一级菜单的子菜单
        for (Menu menu : parentNodes) {
            // 筛选所有数据中pid=父级id的数据就是二级菜单
            menu.setChildren(list.stream().filter(m -> menu.getId().equals(m.getPid())).collect(Collectors.toList()));
        }
        return parentNodes;
    }
}
