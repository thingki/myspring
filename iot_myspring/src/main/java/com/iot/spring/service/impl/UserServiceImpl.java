package com.iot.spring.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.spring.dao.UserDAO;
import com.iot.spring.service.UserService;
import com.iot.spring.vo.UserInfo;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO udao;
	
	@Override
	public List<UserInfo> getUserList() {
		return udao.selectUserList();
	}
	
	@Override
	public HashMap<String, Object> getUser(UserInfo user) {
		UserInfo checkUc = udao.selectUser(user);
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("msg", "Welcome IOT_TEST HomePage");
		hm.put("login", "ok");
		if (checkUc != null) {
			if (!checkUc.getuPwd().equals(user.getuPwd())) {
				hm.put("msg", "Check UserPWD");
				hm.put("login", "pwdno");
			} 	
		}else {
			hm.put("msg", "Check UserID!");
			hm.put("login", "idno");
		}
		return hm;
	}
	
	@Override
	public UserInfo getUser(List<UserInfo> user) {
		return null;
	}

	@Override
	public Map<String, Object> insertUser(Map<String, Object> map, UserInfo ui) {
		int result=0;
		result = udao.insertUser(ui);
		if(result==1) {
			map.put("msg", "회원가입 성공");
		}else if(result==0) {
			map.put("msg", "회원가입 실패");
		}
		return map;
	}

	@Override
	public int updateUser() {
		return 0;
	}

	@Override
	public int deleteUser() {
		return 0;
	}
}
