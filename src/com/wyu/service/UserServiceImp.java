package com.wyu.service;

import com.wyu.mapper.UserMapper;
import com.wyu.pojo.User;
import com.wyu.pojo.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/23
 * Time: 17:20
 */

@Service("userServiceImp")
public class UserServiceImp implements UserService {

    //    @Autowired
//    @Qualifier()
    @Resource
    private UserMapper userMapper;

    @Override
    public int insertUser(User user) {
        return userMapper.insert(user);
    }

    @Override
    public User selectUser(String number) {
        UserExample userExample = new UserExample();
        User user = null;
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andNumberEqualTo(number);
        List<User> userList = userMapper.selectByExample(userExample);
        if (userList.size() != 0) {
            System.out.println("userList------------------" + userList.toString());
            user = userList.get(0);
            System.out.println("select User by username" + user.toString());
//            return user;
        }
        return user;
    }

    @Override
    public int updateUserById(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int deleteUserById(int deleteById) {
        return userMapper.deleteByPrimaryKey(deleteById + "");
    }

    @Override
    public User selertUserByPhone(String phone) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        List<User> userList = userMapper.selectByExample(userExample);
        if (userList.size() != 0) {
            return userList.get(0);
        }
        return null;
    }

    @Override
    public List<User> selectUserByPage() {
        UserExample userExample = new UserExample();
        List<User> userList = userMapper.selectByExample(userExample);
        System.out.println(userList.toString());
        return userList;
    }

}
