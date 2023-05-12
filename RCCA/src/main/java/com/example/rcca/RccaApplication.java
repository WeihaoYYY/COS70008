package com.example.rcca;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@Slf4j
@EnableJpaRepositories
@EnableTransactionManagement
public class RccaApplication {

    public static void main(String[] args) {
        SpringApplication.run(RccaApplication.class, args);
        log.info("RCCA application started");
    }

}