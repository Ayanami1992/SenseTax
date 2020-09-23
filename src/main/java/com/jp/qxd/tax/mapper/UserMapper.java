package com.jp.qxd.tax.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.Authority;
import com.jp.qxd.tax.model.User;

@Mapper
public interface UserMapper {

	public List<User> getUsers(User user);

	public int createUsers(User user);

	public int updateUserAuthKey(User user);

	public int updateUserStatus(User user);

	public User findByEmail(String email);

	public  List<Authority> getAuthorityByEmail(String email);

	public int activeUser(User user);

	public int createUserAuthority(User user);

}
