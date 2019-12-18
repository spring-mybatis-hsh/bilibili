package cn.bdqn.domain;

import java.util.Date;

/**
 * 订单类
 */
public class Ordertable {

    private String orderID;

    private String orderuserName;

    private String ordergridsName;

    private String ordergridsImg;

    private String orderzongRMB;

    private String orderStat;

    private Date orderTime;

    private String orderAddr;

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getOrderuserName() {
        return orderuserName;
    }

    public void setOrderuserName(String orderuserName) {
        this.orderuserName = orderuserName;
    }

    public String getOrdergridsName() {
        return ordergridsName;
    }

    public void setOrdergridsName(String ordergridsName) {
        this.ordergridsName = ordergridsName;
    }

    public String getOrdergridsImg() {
        return ordergridsImg;
    }

    public void setOrdergridsImg(String ordergridsImg) {
        this.ordergridsImg = ordergridsImg;
    }

    public String getOrderzongRMB() {
        return orderzongRMB;
    }

    public void setOrderzongRMB(String orderzongRMB) {
        this.orderzongRMB = orderzongRMB;
    }

    public String getOrderStat() {
        return orderStat;
    }

    public void setOrderStat(String orderStat) {
        this.orderStat = orderStat;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderAddr() {
        return orderAddr;
    }

    public void setOrderAddr(String orderAddr) {
        this.orderAddr = orderAddr;
    }

    @Override
    public String toString() {

        return "Ordertable{" +
                "orderID='" + orderID + '\'' +
                ", orderuserName='" + orderuserName + '\'' +
                ", ordergridsName='" + ordergridsName + '\'' +
                ", ordergridsImg='" + ordergridsImg + '\'' +
                ", orderzongRMB='" + orderzongRMB + '\'' +
                ", orderStat='" + orderStat + '\'' +
                ", orderTime=" + orderTime +
                ", orderAddr='" + orderAddr + '\'' +
                '}';
    }
}
