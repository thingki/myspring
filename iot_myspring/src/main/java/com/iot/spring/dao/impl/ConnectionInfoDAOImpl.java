package com.iot.spring.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iot.spring.dao.ConnectionInfoDAO;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;


@Repository
public class ConnectionInfoDAOImpl implements ConnectionInfoDAO{
	@Autowired
	@Qualifier("connector")
	private SqlSessionFactory ssf;
	
	@Override
	public ConnectionInfoVO selectConnectionInfo(ConnectionInfoVO ci) {
		SqlSession ss = ssf.openSession();
		ConnectionInfoVO ciList = (ConnectionInfoVO) ss.selectList("connect_info.selectConncetionInfo");
		return ciList;
	}

	@Override
	public List<ConnectionInfoVO> selectConnectionInfoList() {
		SqlSession ss = ssf.openSession();
		List<ConnectionInfoVO> ciList = ss.selectList("connect_info.selectConncetionInfoList");
		return ciList;
	
	}

	@Override
	public int insertConnectionInfo(ConnectionInfoVO ci) {
		int result=0;
		SqlSession ss = ssf.openSession();
		result=ss.insert("connect_info.insertConncetionInfo", ci);
		ss.close();
		return result;
	}

	@Override
	public List<Map<String, Object>> selectDatabaseList() {
		SqlSession ss = ssf.openSession();
		List<Map<String, Object>>result=ss.selectList("connect_info.selectDatabase");
		ss.close();
		return result;
	}

	@Override
	public List<TableVO> selectTable(String dbName) {
		
		SqlSession ss = ssf.openSession();
		List<TableVO> result=ss.selectList("connect_info.selectTable", dbName);
		ss.close();
		return result;
	}
	
	
	

}
