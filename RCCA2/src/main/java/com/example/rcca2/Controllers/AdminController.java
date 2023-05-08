package com.example.rcca2.Controllers;

import com.example.rcca2.Entities.Administrator;
import com.example.rcca2.Services.AdminService;
import com.example.rcca2.Services.ItemService;
//import jakarta.annotation.security.RolesAllowed;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@Controller
//@RolesAllowed("ADMIN")
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private ItemService itemService;

    @GetMapping
    public List<Administrator> pagination2() {
        return adminService.pagination(0, 5);
    }

    @GetMapping("/index")
    public String index(){
        return "hello index";
    }

    @GetMapping("/raw")
    public Administrator test() {
        log.info("Admin - {}", adminService.findById(1L));
        return adminService.findById(1L);  //return raw data
    }

    @GetMapping("/{page}/{pageSize}")
    public List<Administrator> pagination(
            @PathVariable("page") int page,
            @PathVariable("pageSize") int pageSize) {
        return adminService.pagination(page, pageSize);
    }

    @GetMapping("/detail/{id}")
    public Administrator detail(@PathVariable("id") Long id) {
        Administrator admin = adminService.findById(id);
        System.out.println(admin);
        return admin;
    }

    @PutMapping("/approval/{id}")
    public void approval(@PathVariable("id") Long id) {
        itemService.approval(id);
    }

    @GetMapping("/login")
    public String login(@ModelAttribute("loginForm") Administrator admin) {
        log.info("User : {}", admin);
        String username = admin.getName();
        String password = admin.getPassword();

        password = DigestUtils.md5DigestAsHex(password.getBytes());

        // 验证用户名和密码

//        // 如果验证成功，将用户信息存储到 session 中
//        HttpSession session = request.getSession();
//        session.setAttribute("username", username);

        // 返回登录成功页面
        return "redirect:/item/index";
    }

    @GetMapping("/{type}/{keyword}")
    public List<Administrator> search(
            @PathVariable("type") String type,
            @PathVariable("keyword") String keyword) {
        return adminService.search(type, keyword);
    }



}

