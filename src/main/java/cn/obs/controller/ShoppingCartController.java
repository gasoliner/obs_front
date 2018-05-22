package cn.obs.controller;

import cn.obs.po.*;
import cn.obs.service.BookService;
import cn.obs.service.OrdersService;
import cn.obs.util.PageUtil;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/shoppingCart",produces = {"application/json;charset=UTF-8"} )
public class ShoppingCartController {

    @Autowired
    OrdersService ordersService;

    @Autowired
    BookService bookService;



    @RequestMapping("/submitOrder")
    public void submitOrder(HttpServletRequest request,HttpServletResponse response) throws IOException {
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        System.out.println("支付完成，共支付" + shoppingCart.getSum() + "元。");

        StringBuilder orderName = new StringBuilder();
//        门票
        List<Item> list = shoppingCart.getList();
        for (Item item:
                list) {
            orderName.append("[" + item.getBookName() + "-" + item.getId() + "-" + item.getPrice() + "*" + item.getCount() + "本]|");
        }

        Orders orders = new Orders();
        orders.setName(orderName.toString());
        orders.setSum(BigDecimal.valueOf(shoppingCart.getSum()));
        orders.setTime(new Date());
        orders.setState("已支付");
        orders.setCid((Integer) SecurityUtils.getSubject().getPrincipal());
//        orders.setCid(6001);
        orders.setVar("无");
        try {
            ordersService.insert(orders);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/order/ui");
        return;
    }

    @RequestMapping("/add")
    public void add(Integer id,String bookname, Double price, Integer count, HttpServletRequest request,HttpServletResponse response) throws IOException {
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }
        List<Item> list = shoppingCart.getList();
        list.add(new Item(count,bookname,(count * price),id));
//        修改sum值
        shoppingCart.setSum(shoppingCart.getSum() + (price * count));
        request.getSession().setAttribute("shoppingCart",shoppingCart);
        response.sendRedirect("/shoppingCart/detail");
        return;
    }


    @RequestMapping("/createNewItem")
    public String ui(Integer id,String bookname, Double price, HttpServletRequest request) {
        System.out.println("bookname = " + bookname);
        System.out.println("price = " + price);
        System.out.println("id = " + id);
        request.setAttribute("bookname",bookname);
        request.setAttribute("price",price);
        request.setAttribute("id",id);
        return "createNewItem";
    }

    @RequestMapping("/detail")
    public String detail(HttpServletRequest request) {
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }
        request.setAttribute("shoppingCart", shoppingCart);
        request.setAttribute("size", shoppingCart.getList().size());
        return "shoppingCartDetail";
    }

}
