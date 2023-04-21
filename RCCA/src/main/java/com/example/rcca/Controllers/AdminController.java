package com.example.rcca.Controllers;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Services.AdminService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@RestController
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/raw")
    public Administrator test() {
        log.info("Admin - {}", adminService.getById(1L));
        return adminService.getById(1L);  //return raw data
    }

/*    @GetMapping("/mav")
    public ModelAndView test2() {
        log.info("Admin - {}", adminService.getById(1L));
        Administrator admin = adminService.getById(1L);
        ModelAndView mav = new ModelAndView("list");
        mav.addObject("admin", admin);
        return mav;  //return mav
    }*/


/*    @GetMapping("/raw")
    public String test(Model model) {
        model.addAttribute("admin", adminService.getById(1L));
        return "test";
    }*/

}
