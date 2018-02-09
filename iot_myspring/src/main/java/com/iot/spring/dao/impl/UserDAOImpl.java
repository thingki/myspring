package com.iot.spring.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iot.spring.controller.UserController;
import com.iot.spring.dao.UserDAO;
import com.iot.spring.vo.UserInfo;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	@Qualifier("connector")
	private SqlSessionFactory ssf;
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);


	
	@Override
	public List<UserInfo> selectUserList() {
		SqlSession ss = ssf.openSession();
		List<UserInfo> userList = ss.selectList("user.selectUserList");
		return userList;
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
		final SqlSession ss = ssf.openSession();
		log.info("ui=>{}", ui);
		UserInfo userList = ss.selectOne("user.selectUser", ui);
		log.info("userInfo=>{}", userList);
		ss.close();
		return userList;
	}

	@Override
	public int insertUser2(UserInfo ui) {
		int result = 0;
		final SqlSession ss = ssf.openSession();
		result=ss.insert("user.insertUser", ui);
		ss.close();
		return result;
	}

	@Override
	public int checkUserInfo(UserInfo ui) {
		final SqlSession ss = ssf.openSession();
		log.info("ui=>{}", ui);
		int userList = ss.selectOne("user.checkUser", ui);
		ss.close();
		return userList;
	}

	@Override
	public List<UserInfo> selectUserList(UserInfo ui) {
		final SqlSession ss = ssf.openSession();
		log.info("ui=>{}", ui);
		List<UserInfo> userList = ss.selectList("user.selectUserList", ui);
		ss.close();
		return userList;
	}
	

}
