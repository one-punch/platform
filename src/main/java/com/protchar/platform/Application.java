package com.protchar.platform;

/**
 * Created by hmbin on 16/5/13.
 */
import com.protchar.platform.config.DatabaseConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@ComponentScan
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class);
        DatabaseConfig.buildDatabaseConfig();
    }
}
