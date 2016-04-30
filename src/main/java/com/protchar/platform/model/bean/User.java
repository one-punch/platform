package com.protchar.platform.model.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

import lombok.Data;

/**
 * Created by apple on 16/4/30.
 */
@Data
@DatabaseTable(tableName = "users")
public class User {
    @DatabaseField(id = true)
    private Integer id;

    @DatabaseField
    private String name;


    public User(){
    }
}
