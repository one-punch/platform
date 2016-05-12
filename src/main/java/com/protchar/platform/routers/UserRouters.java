package com.protchar.platform.routers;

import com.protchar.platform.model.bean.User;
import spark.ModelAndView;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import java.util.HashMap;
import java.util.Map;

import static spark.Spark.get;

/**
 * Created by scalaview on 16/4/30.
 */
public class UserRouters extends Base {
    public UserRouters() {
        super();
    }

    public void setupRoutes() {

        get("/admin", (req, res) -> {
            Map<String,Object> map = new HashMap<>();

            return new ModelAndView(map, "admin/index");
        }, new ThymeleafTemplateEngine());

        get("/user/:id", (req, res) -> {

            return new ModelAndView(null, "testpage");
        }, new ThymeleafTemplateEngine());
    }

}
