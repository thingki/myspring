package com.iot.spring.service;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.UserInfo;

public interface UserService {
	
	
	public List<UserInfo> getUserList();
	public List<UserInfo> getUserList(UserInfo ui);
	public UserInfo getUserInfo(UserInfo ui);
	public Map<String, Object> insertUser(Map<String, Object> map, UserInfo ui);
	public int updateUser();
	public int deleteUser();
	public void insertUser2(Map<String, Object> rMap, UserInfo ui);
}
