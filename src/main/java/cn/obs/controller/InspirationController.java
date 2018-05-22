package cn.obs.controller;

import cn.obs.po.Inspiration;
import cn.obs.po.DataGrid;
import cn.obs.po.Page;
import cn.obs.service.InspirationService;
import cn.obs.util.PageUtil;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Ww on 2018/5/12.
 */
@Controller
@RequestMapping(value = "/inspiration",produces = {"application/json;charset=UTF-8"} )
public class InspirationController {


    @Autowired
    InspirationService inspirationService;

    @RequestMapping("/ui")
    public String ui(HttpServletRequest request) {
        request.setAttribute("inspirationList",inspirationService.vo(inspirationService.list(new Page())));
        return "inspiration";
    }

    @RequestMapping("/add")
    public void add(Inspiration inspiration,HttpServletResponse response) throws IOException {
        inspiration.setTime(new Date());
        inspiration.setCid((Integer) SecurityUtils.getSubject().getPrincipal());
        try {
            inspirationService.insert(inspiration);
        } catch (Exception e) {
        }
        response.sendRedirect("/inspiration/ui");
        return;
    }
    
}
