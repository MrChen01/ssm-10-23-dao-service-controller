package com.wyu.service;

import com.wyu.mapper.DeptMapper;
import com.wyu.pojo.Dept;
import com.wyu.pojo.DeptExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/26
 * Time: 17:14
 */
@Service("deptServiceImpl")
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Dept> selectAllDept() {
        DeptExample deptExample = new DeptExample();
        return deptMapper.selectByExample(deptExample);
    }

    @Override
    public int deleteDeptByID(int id) {
        return deptMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateDeptByID(Dept dept) {
        return deptMapper.updateByPrimaryKey(dept);
    }

    @Override
    public int insertDept(Dept dept) {
        return deptMapper.insertSelective(dept);
    }
}
