package com.hrbust.bean;

public class Singer {
    private int id;
    private String singerName;
    private String sex;
    private String introduce;

    public Singer() {
    }

    public Singer(int id, String singerName, String sex, String introduce) {
        this.id = id;
        this.singerName = singerName;
        this.sex = sex;
        this.introduce = introduce;
    }

    public Singer(String singerName, String sex, String introduce) {
        this.singerName = singerName;
        this.sex = sex;
        this.introduce = introduce;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Singer{" +
                "id=" + id +
                ", singerName='" + singerName + '\'' +
                ", sex='" + sex + '\'' +
                ", introduce='" + introduce + '\'' +
                '}';
    }

}
