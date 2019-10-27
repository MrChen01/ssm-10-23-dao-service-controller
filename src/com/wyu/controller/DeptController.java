package com.wyu.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wyu.pojo.Dept;
import com.wyu.service.DeptService;
import com.wyu.service.DeptServiceImpl;
import com.wyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/26
 * Time: 17:08
 */

@Controller
@RequestMapping
public class DeptController {

    @Autowired
    private DeptService deptService;

    /**
     * 插入部门
     *
     * @param dept
     * @return
     */
    @RequestMapping(value = "/insertDept", method = RequestMethod.POST, produces = {"application/text;charset=UTF-8"})
    @ResponseBody
    public String insertDept(Dept dept) {
        System.out.println("dept---->" + dept.toString());
        int i = deptService.insertDept(dept);
//        String info = "添加失败";
//        if (i > 0) {
//            info = "添加成功";
//        }
        return i+"";
    }

    /**
     * 删除部门通过id
     *
     * @param id
     * @return
     */

    @RequestMapping(value = "/deleteDeptById", produces = {"application/text;charset=UTF-8"})
    @ResponseBody
    public String deleteDeptById(int id) {
        int i = deptService.deleteDeptByID(id);
        String info = "删除失败";
        if (i > 0) {
            info = "删除成功";
        }
        return info;
    }

    /**
     * 通过部门id查找，从而修改部门信息
     *
     * @param dept
     * @return
     */
    @RequestMapping("/updateDeptById")
    @ResponseBody
    public String updateDeptById(Dept dept) {
        int i = deptService.updateDeptByID(dept);
        return i + "";
    }

    /**
     * 分页查询部门
     *
     * @return
     */
    @RequestMapping(value = "/selectAllDept", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String selectAllDept(int page, int rows) {
        PageHelper.startPage(page, rows);
        List<Dept> depts = deptService.selectAllDept();
        PageInfo<Dept> pageInfo = new PageInfo<>(depts);
        long total = pageInfo.getTotal();
        String stringDept = JSON.toJSONString(depts);
        String returnJson = "{\"total\":" + total + ",\"rows\":" + stringDept + "}";
        System.out.println(returnJson);
        return returnJson;
    }

}
