package com.renjw.order;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * 启动程序
 * 
 * @author goram
 */
// @EnableFeignClients 开启feign
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
@EnableFeignClients
public class OrderApplication
{
    public static void main(String[] args)
    {
        SpringApplication.run(OrderApplication.class, args);
        System.out.println("-------------- 订单服务-启动成功  --------------");
    }

    @Bean
    @LoadBalanced
    public RestTemplate init(RestTemplateBuilder builder){
       return builder.build();
    }
}
