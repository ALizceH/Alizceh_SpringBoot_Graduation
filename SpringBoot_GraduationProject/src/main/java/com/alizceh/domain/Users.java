package com.alizceh.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@TableName("users")
public class Users {
    private Integer id;
    private String userId;
    private String userAccount;
    private String userPassword;
    private String userPostbox;
    private String nickName;
    private String avatarUrl;
    private String role;

    public Users(String userId, String userAccount, String userPassword, String userPostbox) {
        this.userId = userId;
        this.userAccount = userAccount;
        this.userPassword = userPassword;
        this.userPostbox = userPostbox;
    }
}
