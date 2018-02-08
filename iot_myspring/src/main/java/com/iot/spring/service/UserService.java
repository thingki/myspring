package com.iot.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.iot.spring.vo.UserInfo;

public interface UserService {
	
	
	public List<UserInfo> getUserList();
	public UserInfo getUser(List<UserInfo> user);
	public HashMap<String, Object> getUser(UserInfo user);
	public Map<String, Object> insertUser(Map<String, Object> map, UserInfo ui);
	public int updateUser();
	public int deleteUser();
}
