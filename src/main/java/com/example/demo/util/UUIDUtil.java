package com.example.demo.util;

/**
 * @ClassName： UUIDUtil
 * @Description： uuid工具类
 * @Author： yzh
 * @Date： 2019/10/22 11:51
 */
import java.util.UUID;

public class UUIDUtil {
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }
    public static void main(String[] args){
        System.out.println(getUUID());
    }

}