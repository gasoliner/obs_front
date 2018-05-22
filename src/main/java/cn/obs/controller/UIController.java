package cn.obs.controller;

import cn.obs.po.Inspiration;
import cn.obs.po.Page;
import cn.obs.service.InspirationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UIController {

    @Autowired
    InspirationService inspirationService;

    @RequestMapping("/")
    public String showIndex(HttpServletRequest request){
        function(request);
        return "index";
    }

    @RequestMapping("/index")
    public String showPage(HttpServletRequest request){
        function(request);
        return "index";
    }

    private void function(HttpServletRequest request) {
        Page page = new Page();
        page.setRows(5);
        List<Inspiration> list = inspirationService.list(page);
        request.setAttribute("inspirationList",inspirationService.vo(list));
        return;
    }

}
