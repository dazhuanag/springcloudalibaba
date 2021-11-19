package com.example.jsp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Renjw
 * @Description TODO
 * @Date 2021/11/19 16:49
 */
@Controller
public class jspController {

    @RequestMapping("/hello1")
    public String hello1(){
        System.out.println("hello");
        return "ch03_17_buy1";  //视图重定向hello.jsp
    }
    @RequestMapping("/hello2")
    public String hello2(){
        System.out.println("hello");
        return "ch03_17_buy2";  //视图重定向hello.jsp
    }
    @RequestMapping("/hello3")
    public String hello3(){
        System.out.println("hello");
        return "ch03_17_display";  //视图重定向hello.jsp
    }
}
