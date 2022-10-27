package com.alizceh.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;


@Data
@TableName("sys_menu")
@NoArgsConstructor
public class Menu implements Serializable {
    private Integer id;
    private String name;
    private String path;
    private String icon;
    private String description;
    private Integer pid;
    @TableField(exist = false)
    private List<Menu> children;

    private String pagePath;
    private String sortNum;
}
