package com.iot.spring.dao;

import java.util.List;

import com.iot.spring.vo.UserInfo;

public interface UserDAO {
	
	public List<UserInfo> selectUserList();
	public UserInfo selectUser();
	public UserInfo selectUser(UserInfo ui);
	public int insertUser(UserInfo ui);
	public int updateUser();
	public int deleteUser();
}
