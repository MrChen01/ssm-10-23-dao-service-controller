package com.wyu.service;

import com.wyu.pojo.Dept;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/26
 * Time: 17:13
 */

public interface DeptService {
    List<Dept> selectAllDept();

    int deleteDeptByID(int id);

    int updateDeptByID(Dept dept);

    int insertDept(Dept dept);
}
