package com.wyu.service;

import com.wyu.pojo.Job;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/28
 * Time: 14:47
 */
public interface JobService {
    int insertJob(Job job);

    List<Job> selectAllJob();

    int updateJob(Job job);

}
