package com.example.rcca.Controllers;

import com.example.rcca.Entities.Administrator;
import com.example.rcca.Services.AdminService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

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
