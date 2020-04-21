package com.hrbust.bean;

public class Goods {
    private MallProduct mallProduct;
    private int count;
    private int money;

    public Goods() {
    }

    public Goods(MallProduct mallProduct, int count,int money) {
        this.mallProduct = mallProduct;
        this.count = count;
        this.money = money;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public MallProduct getMallProduct() {
        return mallProduct;
    }

    public void setMallProduct(MallProduct mallProduct) {
        this.mallProduct = mallProduct;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "mallProduct=" + mallProduct +
                ", count=" + count +
                ", money=" + money +
                '}';
    }
}
