package com.iot.spring.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iot.spring.common.dbcon.DBConnector;
import com.iot.spring.dao.ConnectionInfoDAO;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;


@Repository
public class ConnectionInfoDAOImpl implements ConnectionInfoDAO{
	@Autowired
	@Qualifier("connector")
	private SqlSessionFactory ssf;
	
	@Override
	public List<ConnectionInfoVO> selectConnectionList(ConnectionInfoVO ci) {
		SqlSession ss = ssf.openSession();
		List<ConnectionInfoVO> ConnectionList = ss.selectList("connect_info.selectConncetionInfoList", ci);
		ss.close();
		return ConnectionList;
	}

	@Override
	public ConnectionInfoVO selectConnection(int ciNo) {
		SqlSession ss = ssf.openSession();
		ConnectionInfoVO ci = ss.selectOne("connect_info.selectConncetionInfoListWithCiNo", ciNo);
		ss.close();
		return ci;
	}

	@Override
	public List<Map<String, Object>> selectDatabaseList(SqlSession ss) throws Exception {
		return ss.selectList("connect_info.selectDatabase");
	}

	@Override
	public List<TableVO> selectTable(SqlSession ss, String dbName) {
		List<TableVO> result = null;
		result=ss.selectList("connect_info.selectTable", dbName);
		return result;
	}
	
	@Override
	public int insertConnectionInfo(ConnectionInfoVO ci) {
		int result=0;
		SqlSession ss = ssf.openSession();
		result=ss.insert("connect_info.insertConncetionInfo", ci);
		ss.close();
		return result;
	}
	
	
	

}
