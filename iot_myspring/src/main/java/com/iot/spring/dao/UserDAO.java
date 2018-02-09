package com.iot.spring.dao;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.UserInfo;

public interface UserDAO {

	public List<UserInfo> selectUserList(UserInfo ui);
	public List<UserInfo> selectUserList();
	public UserInfo selectUser(UserInfo ui);
	public int insertUser(UserInfo ui);
	public int updateUser();
	public int deleteUser();

	public int insertUser2(UserInfo ui);
	public int checkUserInfo(UserInfo ui);
}
