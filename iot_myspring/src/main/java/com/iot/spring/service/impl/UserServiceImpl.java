package com.iot.spring.service.impl;

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

	@Override
	public UserInfo getUserInfo(UserInfo ui) {
		return udao.selectUser(ui);
	}

	private boolean checkUserInfo(UserInfo ui) {
		if(udao.checkUserInfo(ui)==1) {
			return true;
		}
		return false;
	}
	@Override
	public void insertUser2(Map<String, Object> rMap, UserInfo ui) {
		rMap.put("msg", "fail~");
		rMap.put("signupOk", false);
		if(checkUserInfo(ui)) {
			rMap.put("msg", ui.getuId()+"는 이미 존재하는 아이디임");
			return;
		}
		int result = udao.insertUser2(ui);
		if(result==1) {
			rMap.put("msg", "success");
			rMap.put("signupOk", true);
		}
	}


	@Override
	public List<UserInfo> getUserList(UserInfo ui) {
		return udao.selectUserList(ui);
	}
}
