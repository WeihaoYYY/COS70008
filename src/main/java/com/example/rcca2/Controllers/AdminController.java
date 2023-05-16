package com.example.rcca2.Controllers;

import com.example.rcca2.Entities.Administrator;
import com.example.rcca2.Entities.Item;
import com.example.rcca2.Services.AdminService;
import com.example.rcca2.Services.ItemService;
//import jakarta.annotation.security.RolesAllowed;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Slf4j
@RestController
//@RolesAllowed("ADMIN")
@RequestMapping("/admin")
@ResponseBody
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private ItemService itemService;

    @GetMapping("/index")
    public RedirectView redirectToGoogle() {
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl("http://localhost:8080/index.html");
        return redirectView;
    }

    @GetMapping("/findAll")
    public List<Item> findAll() {
        return itemService.findAll();
    }

    public static void getUsername() {
        //Authentication是spring security中保存用户信息的对象，里面包含用户信息，权限信息，登录密码等。
        // 可以通过SecurityContextHolder来获取Authentication对象，然后再获取用户信息
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        System.out.println(authentication.getAuthorities());
    }


    @GetMapping
    public List<Administrator> pagination2() {
        return adminService.pagination(0, 5);
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

    @GetMapping("/status/{rid}/{status}")
    public RedirectView approval(@PathVariable("rid") Long rid, @PathVariable("status") int status) {
        itemService.approval(rid, status);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl("http://localhost:8080/submission.html");
        return redirectView;
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

    @GetMapping("/unapp")
    public List<Item> unapp(){
        return itemService.findUnapp();
    }

}

