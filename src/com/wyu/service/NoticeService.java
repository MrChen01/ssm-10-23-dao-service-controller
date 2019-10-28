package com.wyu.service;

import com.wyu.pojo.Notice;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/27
 * Time: 11:27
 */
public interface NoticeService {
    int insertNotice(Notice notice);
    List<Notice> selectAllNotice();
    int updateNotice(Notice notice);
    int deleteNotice(int id);
}
