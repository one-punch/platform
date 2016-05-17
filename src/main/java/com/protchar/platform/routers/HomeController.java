package com.protchar.platform.routers;

/**
 * Created by hmbin on 16/5/13.
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
class HomeController extends Base{

    @RequestMapping(value = "/", method = RequestMethod.GET)
    String index(Model model) {
        return "index";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    String admin_index(Model model) {
        return "admin/index";
    }

}
