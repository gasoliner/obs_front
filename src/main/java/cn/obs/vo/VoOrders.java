package cn.obs.vo;
import java.math.BigDecimal;
import java.util.Date;

import cn.obs.po.Orders;

/**
 * Created by Ww on 2018/5/21.
 */
public class VoOrders extends Orders {

    private String voPublish;

    private String voCid;

    private String voAction;

    public VoOrders(Orders orders) {
        this.setOid(orders.getOid());
        this.setName(orders.getName());
        this.setSum(orders.getSum());
        this.setTime(orders.getTime());
        this.setState(orders.getState());
        this.setCid(orders.getCid());
        this.setVar(orders.getVar());
    }

    public VoOrders() {}

    public String getVoAction() {
        return voAction;
    }

    public void setVoAction(String voAction) {
        this.voAction = voAction;
    }

    public String getVoPublish() {
        return voPublish;
    }

    public void setVoPublish(String voPublish) {
        this.voPublish = voPublish;
    }

    public String getVoCid() {
        return voCid;
    }

    public void setVoCid(String voCid) {
        this.voCid = voCid;
    }
}
