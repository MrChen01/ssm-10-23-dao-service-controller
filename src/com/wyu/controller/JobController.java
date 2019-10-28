package com.wyu.controller;

import com.wyu.pojo.Job;
import com.wyu.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/28
 * Time: 14:48
 */

@Controller
@RequestMapping
public class JobController {

    @Autowired
    private JobService jobService;

    /**
     * 插入部门
     *
     * @param job 工作名称
     * @return
     */
    @RequestMapping("/insertJob")
    @ResponseBody
    public String insertJob(Job job) {
        int i = jobService.insertJob(job);
        return i + "";
    }

    /**
     * 查找全部工作岗位
     *
     * @return
     */

    @RequestMapping("/selectAllJob")
    @ResponseBody
    public List<Job> selectAllJob(int page, int rows) {
        List<Job> jobs = jobService.selectAllJob();
        return jobs;
    }

    @RequestMapping(value = "/updateJob", method = RequestMethod.POST)
    @ResponseBody
    public String updateJob(Job job) {
        int i = jobService.updateJob(job);
        return i + "";
    }


}
