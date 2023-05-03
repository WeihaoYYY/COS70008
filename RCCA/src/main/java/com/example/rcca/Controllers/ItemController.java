package com.example.rcca.Controllers;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Entities.Item;
import com.example.rcca.Services.ItemService;
import jakarta.annotation.security.PermitAll;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/item")
@PermitAll
public class ItemController {

    @Autowired
    private ItemService itemService;

    @GetMapping("/index")
    public String index(){
        return "index";
    }

    @PostMapping("/ax1")
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String uname = req.getParameter("userName");
        String pwd = req.getParameter("userPwd");
        System.out.println(uname + " " + pwd);
    }

//    @GetMapping("/{type}/{keyword}")
//    public List<Item> search(
//            @PathVariable("type") String type,
//            @PathVariable("keyword") String keyword) {
//        return itemService.pagination(page, pageSize);
//    }

}
