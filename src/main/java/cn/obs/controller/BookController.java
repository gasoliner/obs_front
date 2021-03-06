package cn.obs.controller;

import cn.obs.po.Book;
import cn.obs.po.Bookkind;
import cn.obs.po.DataGrid;
import cn.obs.po.Page;
import cn.obs.service.BookService;
import cn.obs.service.BookkindService;
import cn.obs.util.PageUtil;
import cn.obs.vo.VoBook;
import cn.obs.vo.VoBookUI;
import com.alibaba.fastjson.JSON;
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
import java.util.List;

/**
 * Created by Ww on 2018/5/12.
 */
@Controller
@RequestMapping(value = "/book",produces = {"application/json;charset=UTF-8"} )
public class BookController {

    @Autowired
    BookkindService bookkindService;

    @Autowired
    BookService bookService;

    @RequestMapping("/ui/{id}")
    public String ui(@PathVariable Integer id, HttpServletRequest request) {
        String currentKind ;
        request.setAttribute("kindList",bookkindService.list(new Page()));
        if (id == 0) {
            currentKind = "全部";
            request.setAttribute("bookList",bookService.list(new Page()));
        } else {
            currentKind = bookkindService.selectByPrimaryKey(id).getKind();
            request.setAttribute("bookList",bookService.listByKid(id));
        }
        request.setAttribute("currentKind",currentKind);
        return "book";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id, HttpServletRequest request) {
        Book book = bookService.selectByPrimaryKey(id);
        List<Book> list = new ArrayList<>();
        list.add(book);
        request.setAttribute("book",bookService.vo(list).get(0));
        return "book_detail";
    }

    @RequestMapping("/list")
    @ResponseBody
    public String getList(Page page){
        DataGrid dataGrid = new DataGrid();
        dataGrid.setRows(bookService.vo(bookService.list(page)));
        dataGrid.setTotal(bookService.count());
        return JSON.toJSONString(dataGrid);
    }

    @RequestMapping("/addition")
    @ResponseBody
    public String add(Book book, @RequestParam("img_file") CommonsMultipartFile file, HttpServletRequest request) {
        try {
            if (file.getSize() > 0) {
                book.setUrl(PageUtil.uploadAnnex(request,file,"book",book.getBookname()));
            }
            bookService.insert(book);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }

    @RequestMapping("/updates/{id}")
    @ResponseBody
    public String update(@PathVariable Integer id, Book book, @RequestParam("img_file")CommonsMultipartFile file, HttpServletRequest request) {
        book.setId(id);
        try {
            if (file.getSize() > 0) {
                book.setUrl(PageUtil.uploadAnnex(request,file,"book",book.getBookname()));
            }
            bookService.update(book);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }

    @RequestMapping("/deletion/{id}")
    @ResponseBody
    public String deletion(@PathVariable Integer id) {
        try {
            bookService.delete(id);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }

    @RequestMapping("/img/{id}")
    public void pic(@PathVariable Integer id, HttpServletResponse response) throws IOException {
        PageUtil.showImg(bookService.selectByPrimaryKey(id).getUrl(),response);
    }
    
}
