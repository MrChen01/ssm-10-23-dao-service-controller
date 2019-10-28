package com.wyu.service;

import com.sun.xml.internal.ws.developer.Serialization;
import com.wyu.mapper.NoticeMapper;
import com.wyu.pojo.Notice;
import com.wyu.pojo.NoticeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<Notice> selectAllNotice() {
        NoticeExample noticeExample = new NoticeExample();
//        NoticeExample.Criteria criteria = noticeExample.createCriteria();
        return noticeMapper.selectByExampleWithBLOBs(noticeExample);
    }

    @Override
    public int updateNotice(Notice notice) {
        return noticeMapper.updateByPrimaryKeyWithBLOBs(notice);
    }

    @Override
    public int deleteNotice(int id) {
        int i = noticeMapper.deleteByPrimaryKey(id);
        return i;
    }


}
