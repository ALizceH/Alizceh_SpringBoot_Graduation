package com.alizceh.domain;


import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class WebUser {
    private String userId;
    private String userAccount;
    private String userPassword;
    private String userPostbox;
    private String nickName;
    private String avatarUrl;
    private String token;
    private String role;
    private List<Menu> menus;

    public WebUser(String userId, String userAccount) {
        this.userId = userId;
        this.userAccount = userAccount;
    }
}
