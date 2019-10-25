package com.wyu.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wyu.mapper.UserMapper;
import com.wyu.pojo.User;
import com.wyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestScope;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.servlet.support.RequestContext;

import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/23
 * Time: 17:29
 */

@Controller
@RequestMapping
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/insertUser")
    public @ResponseBody
    String insertUser(User user, Model model) {
        user.setCreatedate(new Date());
        System.out.println("------" + user.toString());
        int i = userService.insertUser(user);
        String info = "insert user success";
        if (i <= 0) {
            info = "insert user fail";
        }
        model.addAttribute("info", info);
        return info;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String selectUserByUsername(String number, String password, Model model) {
        System.out.println("number--" + number + "" + password);
        User user = userService.selectUser(number);
        if (user != null) {
            model.addAttribute("user", user);
            model.addAttribute("loginfo", "登录成功");
            return "main";
        } else {
            model.addAttribute("loginfo", "登录失败");
            return "index";
        }
    }


    //账号验证 是否重复
    @RequestMapping(value = "/numberVertify", method = RequestMethod.POST)
    public @ResponseBody
    String numberVertify(String number) {
        User user = userService.selectUser(number);
        String data = "0";//不存在 为零
        if (user != null) {
            System.out.println(user.toString());
            data = "1";//存在 为1
        }
        return data;
    }


    //电话号码验证是否重复
    @RequestMapping(value = "/phoneVertify", method = RequestMethod.POST)
    public @ResponseBody
    String phoneVertify(String phone) {
        User user = userService.selertUserByPhone(phone);
        String info = "0";
        if (user != null) {
            info = "1";
        }
        return info;
    }

    /**
     * 分页查询
     *
     * @param page 第几页
     * @param rows       一页查询行数
     * @return
     */
    @RequestMapping(value = "/selectUserByPage", produces = {"application/json;charset=UTF-8"})
    public @ResponseBody
    String selectUserByPage(int page, int rows) {//pageNumber 页面，rows 行数
        PageHelper.startPage(page, rows);
        List<User> userList = userService.selectUserByPage();
        PageInfo<User> pageInfo = new PageInfo(userList);
        long total = pageInfo.getTotal();
        System.out.println("controller--->" + total);
        System.out.println("userList----->");
        for (User user : userList) {
            System.out.println(user.toString());
        }
        String stringJson = JSON.toJSONString(userList);
        String json = "{\"total\":" + total + ",\"rows\":" + stringJson + "}";
        System.out.println("json---===-->" + json);
        return json;
    }


}
