package com.hrbust.bean;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

public class VerifyCode {
    private int w = 70;
    private int h = 35;
    private Random r = new Random();
    private String[] fontNames = {"宋体", "华文楷体", "微软雅黑", "华文隶书", "楷体", "Times New Roman"};
    private String codes = "23456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ";
    private Color bgColor = new Color(255, 255, 255);
    private String text;

    private Color randomColor() {
        int red = r.nextInt(150);
        int green = r.nextInt(150);
        int blue = r.nextInt(150);
        return new Color(red, green, blue);
    }

    private Font randomFont() {
        int index = r.nextInt(fontNames.length);
        String fontName = fontNames[index];
        int style = r.nextInt(4);
        int size = r.nextInt(5) + 24;
        return new Font(fontName, style, size);
    }

    //画干扰线
    private void drawLine(BufferedImage image) {
        int num = 3;
        //一共画3条
        Graphics2D g2 = (Graphics2D) image.getGraphics();
        for (int i = 0; i < num; i++) {
            //随机生成坐标，即4个值
            int x1 = r.nextInt(w);
            int y1 = r.nextInt(h);
            int x2 = r.nextInt(w);
            int y2 = r.nextInt(h);
            g2.setStroke(new BasicStroke(1.5F));
            //设置笔画的宽度
            g2.setColor(Color.blue);
            //干扰线颜色
            g2.drawLine(x1, y1, x2, y2);
            //画线
        }
    }

    /**
     * 随机生成数字
     * @return
     */
    private char randomChar() {
        int index = r.nextInt(codes.length());
        return codes.charAt(index);
    }

    BufferedImage createImage() {
        BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        Graphics2D g2 = (Graphics2D) image.getGraphics();
        g2.setColor(this.bgColor);
        g2.fillRect(0, 0, w, h);
        return image;
    }

    /**
     * 获得验证码
     * @return
     */
    public BufferedImage getImage() {
        BufferedImage image = createImage();
        //创建图片缓冲区
        Graphics2D g2 = (Graphics2D) image.getGraphics();
        //得到绘制环境
        StringBuilder sb = new StringBuilder();
        //用来装载生成的验证码文本向图中画4个字符
        for (int i = 0; i < 4; i++) {
            //循环4次
            String s = randomChar() + "";
            //随机生成一个字符
            sb.append(s);
            //把字母添加到sb中
            double x = i * 1.0 * w / 4;
            //设置当前字符的x轴坐标
            g2.setFont(randomFont());
            //设置随机字体
            g2.setColor(randomColor());
            //设置随机颜色
            g2.drawString(s, (int) x, h - 5);
        }
        this.text = sb.toString();
        drawLine(image);
        //添加干扰线
        return image;
    }

    /**
     * 返回验证码上面的文本
     * @return
     */

    public String getText() {
        return text;
    }


    /**
     * 保存图片到指定的输出流上
     * @param image
     * @param out
     * @throws IOException
     */
    public static void output(BufferedImage image, OutputStream out) throws IOException {
        ImageIO.write(image, "JPEG", out);
    }
}

