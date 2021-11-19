package com.renjw.order.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Renjw
 * @Description 库存服务Feign
 * @Date 2021/11/15 16:44
 */

/**
 * name：调用指定的rest接口所对应的服务名
 * path：调用指定的rest解耦所对应的StockController类路径（@RequestMapping（"/stock"））
 */
@FeignClient(name = "stock-service", path = "/stock")
public interface StockFeignService {

    @RequestMapping("add")
    String add();

}
