package com.protchar.platform.config;

import com.google.gson.JsonObject;
import com.j256.ormlite.jdbc.JdbcConnectionSource;
import com.j256.ormlite.support.ConnectionSource;
import com.protchar.platform.util.Tools;

/**
 * Created by apple on 16/4/30.
 */
public class DatabaseConfig {
    public static ConnectionSource connectionSource;
    public static JsonObject config;

    public DatabaseConfig() {
        config = Tools.loadConfig(System.getProperty("user.dir") + "/config.json");
        String url = connectionString(config.getAsJsonObject("database"));
        connectionSource = new JdbcConnectionSource(url);
    }

    public static String connectionString(JsonObject databaseConfig) {
        String username = databaseConfig.get("username").getAsString();
        String password = databaseConfig.get("password").getAsString();
        String database = databaseConfig.get("database").getAsString();
        String host = databaseConfig.get("host").getAsString();
        String timezone = databaseConfig.get("timezone").getAsString();
        String dialect = databaseConfig.get("dialect").getAsString();
        return String.format("jdbc:%s://%s:3306/%s?%s", dialect, host, database,
                String.format("user=%s&password=%s&useUnicode=true&characterEncoding=utf8&useTimezone=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", username, password));
    }

    public static DatabaseConfig buildDatabaseConfig() {
        return new DatabaseConfig();
    }
}
