package cn.bdqn.controller;

import cn.bdqn.domain.User;
import cn.bdqn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, Model model){
        User us = userService.Login(user);
        if(us!=null){
            System.out.println("登录成功");
            return "diaockz";
        }else{
            System.out.println("登录失败");
            return "error";
        }
    }


}
