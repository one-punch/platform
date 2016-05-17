package com.protchar.platform;

/**
 * Created by hmbin on 16/5/13.
 */
import com.protchar.platform.config.DatabaseConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableAutoConfiguration
@ComponentScan({"com.protchar.platform.routers", "asset.pipeline.springboot"})
public class Application extends WebMvcConfigurerAdapter {

    public static void main(String[] args) {
        SpringApplication.run(Application.class);
        DatabaseConfig.buildDatabaseConfig();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        if (!registry.hasMappingForPattern("/public/**")) {
            registry.addResourceHandler("/public/**").addResourceLocations("classpath:/public/");
        }
    }
}
