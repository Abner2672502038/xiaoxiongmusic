package com.hrbust.bean;

import java.io.*;

public class Test {
    public static void main(String[] args) {
        FileInputStream fis = null;
        FileOutputStream fos = null;
        File srcFile = new File("E:\\music1","大欢 - 多年以后.mp3");
        File targetFile = new File("E:\\WorkSpace\\Inteljidea\\personProject1\\web\\music","多年以后.mp3");
        try {
            fis = new FileInputStream(srcFile);
            fos = new FileOutputStream(targetFile);
            int len;
            byte[] buff = new byte[1024];
            while (-1 != (len=fis.read(buff))) {
                fos.write(buff, 0, len);
            }
            fos.flush();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != fis) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
            if (null != fos) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        }
    }
}
