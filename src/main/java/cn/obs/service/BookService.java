package cn.obs.service;

import cn.obs.po.Book;
import cn.obs.po.Page;
import cn.obs.vo.VoBook;

import java.util.List;

/**
 * Created by Ww on 2018/5/11.
 */
public interface BookService {
    List<Book> list(Page page);

    int insert(Book record);

    int delete(Integer id);

    int update(Book record);

    long count();

    List<VoBook> vo(List<Book> list);

    Book selectByPrimaryKey(Integer id);

    List<Book> listByKid(Integer bkid);
}
