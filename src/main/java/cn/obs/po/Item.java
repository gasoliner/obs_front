package cn.obs.po;

/**
 * Created by Ww on 2018/5/21.
 */
public class Item {

    private int count;

    private String bookName;

    private Double price;

    private Integer id;

    public Item(int count, String bookName, Double price, Integer id) {
        this.count = count;
        this.bookName = bookName;
        this.price = price;
        this.id = id;
    }

    public Item() {
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }
}
