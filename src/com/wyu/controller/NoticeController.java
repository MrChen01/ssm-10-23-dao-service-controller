package com.wyu.controller;

import com.wyu.pojo.Notice;
import com.wyu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/27
 * Time: 11:30
 */

@Controller
@RequestMapping
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @RequestMapping(value = "/insertNotice")
    @ResponseBody
    public String insertNotice(Notice notice) {
        int i = noticeService.insertNotice(notice);
        return i + "";
    }
}
