package cn.obs.po;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ww on 2018/5/21.
 */
public class ShoppingCart {

    private double sum;

    private List<Item> list = new ArrayList<>();

    public List<Item> getList() {
        return list;
    }

    public void setList(List<Item> list) {
        this.list = list;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }
}
