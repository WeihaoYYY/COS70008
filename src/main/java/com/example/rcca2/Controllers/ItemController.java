package com.example.rcca2.Controllers;

import com.example.rcca2.Entities.Administrator;
import com.example.rcca2.Entities.Item;
import com.example.rcca2.Services.AdminService;
import com.example.rcca2.Services.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Slf4j
@Controller
@RequestMapping("/item")
//@PermitAll
public class ItemController {

    @Autowired
    private ItemService itemService;
    @Autowired
    private AdminService adminService;

    @RequestMapping("/index")
    public String pagination(ModelMap modelMap, @RequestParam(required = false, defaultValue = "0") int page) {
        System.out.println(page);
        modelMap.addAttribute("list", itemService.pagination(page, 3));
        return "index";
    }
//    @PostMapping("/ax1")
//    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String uname = req.getParameter("userName");
//        String pwd = req.getParameter("userPwd");
//        System.out.println(uname + " " + pwd);
//
////        resp.setCharacterEncoding("utf-8");
////        resp.setContentType("text/html;charset=utf-8");
////        resp.getWriter().write(uname + " " + pwd);
//    }

//    @GetMapping("/map")
//    //@RequestBody接受的是一个json对象的字符串，而不是Json对象，
//    // 在请求时往往都是Json对象，用JSON.stringify(data)的方式就能将对象变成json字符串
//    public @ResponseBody Map<String, Object> map() {
//        Map<String, Object> map = new HashMap();
//        map.put("admin", adminService.search("two", "a"));
//        map.put("item", itemService.findById(1L));
//        return map;
//    }

    @RequestMapping("/hi")
    public String hi(ModelMap model){
        Administrator admin = adminService.findById(1L);
        Administrator admin2 = adminService.findById(2L);
        List<Administrator> admins = new ArrayList<>();
        admins.add(admin);
        admins.add(admin2);
        model.addAttribute("admin", admins);
        model.addAttribute("sb", "abcd");
        model.addAttribute("sb2", admins);
        return "hello";
    }

    @RequestMapping("/index1")
    public String index1() {
        return "index";
    }

    @GetMapping("/jump")
    public String jump() {
        return "jump";
    }

    @RequestMapping("/detail")
    public ModelAndView detail(@RequestParam Long id) {
        ModelAndView mav = new ModelAndView("/jump");
        mav.addObject("id", id);
        return mav;
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam String category, @RequestParam String search) {
        ModelAndView mav = new ModelAndView("/index");
        mav.addObject("list", itemService.searchItemsByType(category, search));
        return mav;
    }

}
