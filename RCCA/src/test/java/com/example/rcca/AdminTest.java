package com.example.rcca;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Services.AdminService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
@Slf4j
class AdminTest { //这里不能加transactional，加了所有测试数据都会回滚

    @Autowired
    private AdminService adminService;

    @Test
    void newRecord() {
        //Administrator jack = adminService.findById(1L);
        Administrator admin = new Administrator("Jack", "223", "What is your name?", "two", null);
        Administrator admin2 = new Administrator("Rose", "223", "What is your name?", "two", admin);
        log.warn("Admin - {}", admin);
        log.warn("Admin - {}", admin2);
        adminService.save(admin);
        adminService.save(admin2);
    }

    @Test
    void page(){

    }

}
