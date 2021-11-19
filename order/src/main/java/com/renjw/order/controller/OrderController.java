package com.renjw.order.controller;

import com.renjw.order.feign.StockFeignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

/**
 * @Author Renjw
 * @Description 订单controller
 * @Date 2021/11/5 17:48
 */
@RestController()
@RequestMapping("/order")
public class OrderController {
//    @Autowired
//    private RestTemplate restTemplate;
    @Autowired
    StockFeignService stockFeignService;

    @RequestMapping("/add")
    public String add(){
        System.out.println("下单成功");
        String add = stockFeignService.add();
        return "下单成功+"+add;
    }
}
