package com.iot.spring.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iot.spring.dao.UserDAO;
import com.iot.spring.vo.UserInfo;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	@Qualifier("connector")
	private SqlSessionFactory ssf;
	
	@Autowired
	private ObjectMapper om;
	
	@Override
	public List<UserInfo> selectUserList() {
		SqlSession ss = ssf.openSession();
		List<UserInfo> userList = ss.selectList("user.selectUserList");
		return userList;
	}

	@Override
	public UserInfo selectUser() {
		return null;
	}

	@Override
	public int insertUser(UserInfo ui) {
		int result = 0;
		SqlSession ss = ssf.openSession();
		result=ss.insert("user.insertUser", ui);
		return result;
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
	public UserInfo selectUser(UserInfo ui) {
		SqlSession ss = ssf.openSession();
		UserInfo checkUi = ss.selectOne("user.loginUser", ui);
		UserInfo userList = om.convertValue(checkUi, UserInfo.class);
		return userList;
	}
	

}
