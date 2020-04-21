package com.hrbust.bean;

public class Classify {
    private int id;
    private String classifyName;
    private String updateTime;

    public Classify() {
    }

    public Classify(int id, String classifyName, String updateTime) {
        this.id = id;
        this.classifyName = classifyName;
        this.updateTime = updateTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Classify{" +
                "id=" + id +
                ", classifyName='" + classifyName + '\'' +
                ", updateTime='" + updateTime + '\'' +
                '}';
    }
}
