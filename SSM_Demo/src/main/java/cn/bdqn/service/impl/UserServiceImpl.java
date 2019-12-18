package cn.bdqn.service.impl;

import cn.bdqn.domain.User;
import cn.bdqn.mapper.UserMapper;
import cn.bdqn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User Login(User user) {
        return userMapper.Login(user);
    }

}
