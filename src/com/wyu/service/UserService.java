package com.wyu.service;

import com.wyu.pojo.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/23
 * Time: 17:19
 */
public interface UserService {
    int insertUser(User user);

    User selectUser(String number);

    int updateUserById(User user);

    int deleteUserById(int deleteById);

    User selertUserByPhone(String phone);

    List<User> selectUserByPage();

    List<User> selectUserByLike(String number, String username, int status  );

}
