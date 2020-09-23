package com.jp.qxd.tax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.jp.qxd.tax.mapper.UserMapper;
import com.jp.qxd.tax.model.Authority;
import com.jp.qxd.tax.model.User;

@Service
public class CustomUserService implements UserDetailsService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userMapper.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("ユーザー存在しない。");
        } else if("locked".equals(user.getStatus())) { //被锁定，无法登录
            throw new LockedException("ユーザーはロックされている");
        } else if("0".equals(user.getStatus())) { //被锁定，无法登录
        	throw new DisabledException("ユーザーは検証されてない");
        } else {

            List<Authority> authorities = userMapper.getAuthorityByEmail(email);
            if (authorities == null || authorities.size() == 0 || authorities.get(0) == null) {
                throw new DisabledException("ユーザーは検証されてない");
            }
            user.setAuthorities(authorities);
        }
        return user;
    }
}
