package com.hrbust.bean;

public class BuyCar {
    private int id;
    private int productId;
    private int buyCount;
    private int userId;

    public BuyCar() {
    }

    public BuyCar(int id, int productId, int buyCount, int userId) {
        this.userId = userId;
        this.id = id;
        this.productId = productId;
        this.buyCount = buyCount;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }

    @Override
    public String toString() {
        return "BuyCar{" +
                "id=" + id +
                ", productId=" + productId +
                ", buyCount=" + buyCount +
                ", userId=" + userId +
                '}';
    }
}
