package com.alizceh.controller;


import com.alizceh.controller.utils.Constants;
import com.alizceh.controller.utils.R;
import com.alizceh.dao.DictDao;
import com.alizceh.domain.Dict;
import com.alizceh.domain.Menu;
import com.alizceh.domain.Role;
import com.alizceh.service.IMenuService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private IMenuService menuService;

    @Autowired
    private DictDao dictDao;

    // 新增或者更新
    @PostMapping
    public R save(@RequestBody Menu menu) {
        menuService.saveOrUpdate(menu);
        return R.success();
    }

    @DeleteMapping("/{id}")
    public R delete(@PathVariable Integer id) {
        menuService.removeById(id);
        return R.success();
    }

    @GetMapping("/ids")
    public R findAllIds() {
        return R.success(menuService.list().stream().map(Menu::getId));
    }

    @PostMapping("/del/batch")
    public R deleteBatch(@RequestBody List<Integer> ids) {
        menuService.removeByIds(ids);
        return R.success();
    }

    @GetMapping
    public R findAll(@RequestParam(defaultValue = "") String name) {
//        List<Menu> menus = menuService.findMenus(name);
//        System.out.println(menus);
        return R.success(menuService.findMenus(name));
    }


    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable Integer currentPage, @PathVariable Integer pageSize, Menu menu){
        System.out.println(menu);
        IPage<Menu> page = menuService.getPage(currentPage, pageSize,menu);
        if(currentPage>page.getPages()){
            page = menuService.getPage(currentPage, pageSize,menu);
        }
        if(page!=null) {
            return R.success(page);
        }
        return R.error();
    }

    @GetMapping("/icons")
    public R getIcons() {
        QueryWrapper<Dict> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("type", Constants.DICT_TYPE_ICON);
        return R.success(dictDao.selectList(queryWrapper));
    }


}
