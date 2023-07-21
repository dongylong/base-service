package com.base;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@Slf4j
@SpringBootApplication
@ComponentScan({"com.base"})
public class Main {
    public static void main(String[] args) {
        try {
			log.info("=========开始启动!========");
            log.info("===================");
            SpringApplication.run(Main.class, args);
            log.info("===================");
            log.info("=========启动成功!");
            log.info("===================");
        } catch (Exception e) {
            log.info("====xxxxxxxxxxxxxxx======");
            log.error("{} 容器启动失败", e);
        }
    }
}