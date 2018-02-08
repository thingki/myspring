package com.iot.spring.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iot.spring.dao.DbDAO;
import com.iot.spring.vo.ColumnVO;
import com.iot.spring.vo.TableVO;

@Repository
public class dbDAOImpl implements DbDAO{
	@Autowired
	@Qualifier("connector")
	private SqlSessionFactory ssf;
	
	@Override
	public List<ColumnVO> selectColumnList(String tableName) {
		SqlSession ss = ssf.openSession();
		List<ColumnVO>result=ss.selectList("connect_info.selectTable", tableName);
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
	public List<TableVO> selectTableList(String dbName) {
		
		SqlSession ss = ssf.openSession();
		List<TableVO> result=ss.selectList("connect_info.selectTable", dbName);
		ss.close();
		return result;
	}

}
