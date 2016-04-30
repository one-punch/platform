package com.protchar.platform;

import com.protchar.platform.config.DatabaseConfig;
import com.protchar.platform.dao.Manager;

import java.sql.SQLException;

/**
 * Created by scalaview on 16/4/30.
 */
public class App {
    public static void main(String[] args) {
        DatabaseConfig.buildDatabaseConfig();
        try {
            Manager.buildDaoManager();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
