package com.hrbust.bean;

public class MallProduct {
    private int id;
    private String productName;
    private String productPrice;
    private String count1;
    private String picturePath;
    private String status;
    private String time1;

    public MallProduct() {
    }

    public MallProduct(int id, String productName, String productPrice, String count1, String picturePath, String status, String time1) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.count1 = count1;
        this.picturePath = picturePath;
        this.status = status;
        this.time1 = time1;
    }

    public MallProduct(String productName, String productPrice, String count, String picturePath, String status, String time) {
        this.productName = productName;
        this.productPrice = productPrice;
        this.count1 = count;
        this.picturePath = picturePath;
        this.status = status;
        this.time1 = time;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public String getCount() {
        return count1;
    }

    public void setCount(String count) {
        this.count1 = count;
    }

    public String getPicturePath() {
        return picturePath;
    }

    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTime() {
        return time1;
    }

    public void setTime(String time) {
        this.time1 = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCount1() {
        return count1;
    }

    public void setCount1(String count1) {
        this.count1 = count1;
    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    @Override
    public String toString() {
        return "MallProduct{" +
                "id=" + id +
                ", productName='" + productName + '\'' +
                ", productPrice='" + productPrice + '\'' +
                ", count1='" + count1 + '\'' +
                ", picturePath='" + picturePath + '\'' +
                ", status='" + status + '\'' +
                ", time1='" + time1 + '\'' +
                '}';
    }
}
