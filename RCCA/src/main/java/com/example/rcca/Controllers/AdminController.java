package com.example.rcca.Controllers;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Services.AdminService;
import com.example.rcca.Services.ItemService;
import jakarta.annotation.security.RolesAllowed;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RolesAllowed("ADMIN")
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



}

/*
    1. 19th May Presentation - Online/Offline
    2. Task Overview
    3. Project background - statement
    4. Scope, what is the thing that included, what is not included, justification is not needed
    5. Project outcome
    6. Compatibility - Architecture diagram
    7. Code how the webserver connect to the database, try not to use terms 2-3 slides
    8. Live demo - show how the system works
    9. Show the slide draft to Naveed
    10. I really like your project, is it possible to host it on the server?
 */
