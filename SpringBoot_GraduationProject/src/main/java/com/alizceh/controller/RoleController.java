package com.alizceh.controller;


import com.alizceh.controller.utils.R;
import com.alizceh.domain.Role;
import com.alizceh.domain.Users;
import com.alizceh.service.IRoleService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author 青哥哥
 * @since 2022-02-10
 */
@RestController
@RequestMapping("/role")
public class RoleController {

    @Resource
    private IRoleService roleService;

    // 新增或者更新
    @PostMapping
    public R save(@RequestBody Role role) {
        roleService.saveOrUpdate(role);
        return R.success();
    }

    @DeleteMapping("/{id}")
    public R delete(@PathVariable Integer id) {
        roleService.removeById(id);
        return R.success();
    }

    @PostMapping("/del/batch")
    public R deleteBatch(@RequestBody List<Integer> ids) {
        roleService.removeByIds(ids);
        return R.success();
    }

    @GetMapping
    public R findAll() {
        return R.success(roleService.list());
    }

    @GetMapping("/{id}")
    public R findOne(@PathVariable Integer id) {
        return R.success(roleService.getById(id));
    }

    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable Integer currentPage, @PathVariable Integer pageSize, Role role){
        System.out.println(role);
        IPage<Role> page = roleService.getPage(currentPage, pageSize,role);
        if(currentPage>page.getPages()){
            page = roleService.getPage(currentPage, pageSize,role);
        }
        if(page!=null) {
            return R.success(page);
        }
        return R.error();
    }

    /**
     * 绑定角色和菜单的关系
     * @param roleId 角色id
     * @param menuIds 菜单id数组
     * @return
     */
    @PostMapping("/roleMenu/{roleId}")
    public R roleMenu(@PathVariable Integer roleId, @RequestBody List<Integer> menuIds) {
        roleService.setRoleMenu(roleId, menuIds);
        return R.success();
    }

    @GetMapping("/roleMenu/{roleId}")
    public R getRoleMenu(@PathVariable Integer roleId) {
        return R.success( roleService.getRoleMenu(roleId));
    }

}