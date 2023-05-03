package com.example.rcca;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Entities.Item;
import com.example.rcca.Services.AdminService;
import com.example.rcca.Services.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@SpringBootTest
@Slf4j
class AdminTest { //这里不能加transactional，加了所有测试数据都会回滚

    @Autowired
    private AdminService adminService;
    @Autowired
    private ItemService itemService;

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
    void findByName(){
        Administrator admin = adminService.findByName("Jack");
        log.warn("Admin - {}", admin);
        System.out.println(admin);
    }

    @Test
    void createItem(){
        Item item = new Item("Jack", "title", "description");
        System.out.println(item);
        itemService.save(item);

        //itemService.approval(1L);
    }

    @Test
    void approval(){
        itemService.approval(1L);
    }

    @Test
    void search() {
        List<Administrator> list = adminService.search("two", "a");
        for(Administrator o : list){
            System.out.println(o);
        }
     }

}
