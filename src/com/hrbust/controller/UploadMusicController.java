package com.hrbust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.*;

@Controller
@RequestMapping("/upload")
public class UploadMusicController {
    @RequestMapping("/music")
    public String uploadmusic() {
        File srcFile = new File("E:\\music3\\音阙诗听、赵方婧 - 芒种.mp3");
        File targetFile = new File("E:\\WorkSpace\\Inteljidea\\personProject1\\web\\music\\芒种.mp3");
        FileInputStream fis = null;
        FileOutputStream fos = null;
        try {
            fis = new FileInputStream(srcFile);
            fos = new FileOutputStream(targetFile);
            int length;
            byte[] buff = new byte[1024];
            while (-1 != (length = fis.read(buff))) {
                fos.write(buff, 0, length);
            }
            fos.flush();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (fis == null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
            if (fos == null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        }
        return "testy";
    }

}
