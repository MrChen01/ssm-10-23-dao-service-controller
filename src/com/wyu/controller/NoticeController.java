package com.wyu.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wyu.pojo.Notice;
import com.wyu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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

    @RequestMapping(value = "/insertNotice", produces = {"application/text;charset=UTF-8"})
//    @ResponseBody
    public String insertNotice(Notice notice) {
        System.out.println(notice);
        System.out.println(notice.toString());
        int i = noticeService.insertNotice(notice);
        String info = "添加主题失败";
        if (i > 0) {
            info = "添加主题成功";
        }
        return "forward:noticeSelect.jsp";
    }


    @RequestMapping(value = "/selectAllNotice", produces = {"application/text;charset=UTF-8"})
    @ResponseBody
    public String selectAllNotice(int page, int rows) {
        PageHelper.startPage(page, rows);
        List<Notice> notices = noticeService.selectAllNotice();
        PageInfo<Notice> pageInfo = new PageInfo<>(notices);
        long total = pageInfo.getTotal();
        System.out.println(notices);
        String stringNotice = JSON.toJSONString(notices);
        String json = "{\"total\":" + total + ",\"rows\":" + stringNotice + "}";
        return json;
    }


    @RequestMapping(value = "/updateNoticeById", method = RequestMethod.POST)
    @ResponseBody
    public String updateNoticeById(Notice notice) {
        System.out.println("updateNoticeById----->" + notice);
        int i = noticeService.updateNotice(notice);
        return i + "";
    }

    @RequestMapping(value = "/deleteNoticeById",produces = {"application/text;charset=UTF-8"})
    @ResponseBody
    public String deleteNoticeById(int id) {
        String info = "删除失败";
        int i = noticeService.deleteNotice(id);
        if (i > 0) {
            info = "删除成功";
        }
        return info;
    }

}
