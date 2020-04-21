package com.hrbust.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DataUtil {
    public static String time() {
        return new SimpleDateFormat("yy-MM-dd hh:mm:ss").format(new Date());
    }
}
