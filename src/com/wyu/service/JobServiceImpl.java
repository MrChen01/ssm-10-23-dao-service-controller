package com.wyu.service;

import com.wyu.mapper.JobMapper;
import com.wyu.pojo.Job;
import com.wyu.pojo.JobExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/28
 * Time: 14:47
 */

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobMapper jobMapper;

    @Override
    public int insertJob(Job job) {
        return jobMapper.insertSelective(job);
    }

    @Override
    public List<Job> selectAllJob() {
        JobExample jobExample = new JobExample();
        List<Job> jobs = jobMapper.selectByExample(jobExample);
        return jobs;
    }

    @Override
    public int updateJob(Job job) {
        return jobMapper.updateByPrimaryKey(job);
    }


}
