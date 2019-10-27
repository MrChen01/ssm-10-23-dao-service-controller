package com.wyu.service;

import com.sun.xml.internal.ws.developer.Serialization;
import com.wyu.mapper.NoticeMapper;
import com.wyu.pojo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/27
 * Time: 11:29
 */

@Service
public class NoticeServiceImpl implements NoticeService {


    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public int insertNotice(Notice notice) {
        return noticeMapper.insertSelective(notice);
    }
}
