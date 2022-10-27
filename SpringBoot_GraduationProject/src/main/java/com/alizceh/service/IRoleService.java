package com.alizceh.service;

import com.alizceh.domain.Role;
import com.alizceh.domain.Users;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 青哥哥
 * @since 2022-02-10
 */
public interface IRoleService extends IService<Role> {
    IPage<Role> getPage(Integer currentPage, Integer pageSize, Role role);

    void setRoleMenu(Integer roleId, List<Integer> menuIds);

    List<Integer> getRoleMenu(Integer roleId);
}