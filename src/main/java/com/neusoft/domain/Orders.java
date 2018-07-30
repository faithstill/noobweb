package com.neusoft.domain;

import java.util.Date;

public class Orders {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.orderid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Integer orderid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.userid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Integer userid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.trade_status
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private String tradeStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.order_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Date orderTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.pay_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Date payTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.delivery_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Date deliveryTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column orders.finish_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    private Date finishTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.orderid
     *
     * @return the value of orders.orderid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Integer getOrderid() {
        return orderid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.orderid
     *
     * @param orderid the value for orders.orderid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.userid
     *
     * @return the value of orders.userid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.userid
     *
     * @param userid the value for orders.userid
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.trade_status
     *
     * @return the value of orders.trade_status
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public String getTradeStatus() {
        return tradeStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.trade_status
     *
     * @param tradeStatus the value for orders.trade_status
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setTradeStatus(String tradeStatus) {
        this.tradeStatus = tradeStatus == null ? null : tradeStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.order_time
     *
     * @return the value of orders.order_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Date getOrderTime() {
        return orderTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.order_time
     *
     * @param orderTime the value for orders.order_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.pay_time
     *
     * @return the value of orders.pay_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Date getPayTime() {
        return payTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.pay_time
     *
     * @param payTime the value for orders.pay_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.delivery_time
     *
     * @return the value of orders.delivery_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Date getDeliveryTime() {
        return deliveryTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.delivery_time
     *
     * @param deliveryTime the value for orders.delivery_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setDeliveryTime(Date deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column orders.finish_time
     *
     * @return the value of orders.finish_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public Date getFinishTime() {
        return finishTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column orders.finish_time
     *
     * @param finishTime the value for orders.finish_time
     *
     * @mbg.generated Mon Jul 30 01:07:10 CST 2018
     */
    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }
}