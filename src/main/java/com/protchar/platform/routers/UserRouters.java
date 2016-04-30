package com.protchar.platform.routers;

import spark.ModelAndView;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import static spark.Spark.get;

/**
 * Created by scalaview on 16/4/30.
 */
public class UserRouters extends Base {
    public UserRouters() {
        super();
    }

    void setupRoutes() {
        get("/user/:id", (req, res) -> {

            return new ModelAndView(null, "testpage");
        }, new ThymeleafTemplateEngine());
    }

}
