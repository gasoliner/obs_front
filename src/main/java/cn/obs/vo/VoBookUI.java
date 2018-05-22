package cn.obs.vo;

import java.util.List;

/**
 * Created by Ww on 2018/5/21.
 */
public class VoBookUI {

    private String category;

    private List<VoBook> list;

    public VoBookUI() {
    }

    public VoBookUI(String category, List<VoBook> list) {
        this.category = category;
        this.list = list;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<VoBook> getList() {
        return list;
    }

    public void setList(List<VoBook> list) {
        this.list = list;
    }
}
