package com.protchar.platform.dao;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.protchar.platform.config.DatabaseConfig;
import com.protchar.platform.model.bean.User;

import java.sql.SQLException;

/**
 * Created by scalaview on 16/4/30.
 */
public class Manager {
    public static Dao<User, Integer> userDao;

    public Manager() throws SQLException {
        userDao = DaoManager.createDao(DatabaseConfig.connectionSource, User.class);
    }

    public static Manager buildDaoManager() throws SQLException{
        return new Manager();
    }
}
