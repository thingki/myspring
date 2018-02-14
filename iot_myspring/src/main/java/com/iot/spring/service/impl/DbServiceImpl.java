package com.iot.spring.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.spring.dao.DbDAO;
import com.iot.spring.service.DbService;
import com.iot.spring.vo.ColumnVO;
import com.iot.spring.vo.TableVO;

@Service
public class DbServiceImpl implements DbService {

	
	@Autowired
	private DbDAO dbdao;
	
	@Override
	public List<Map<String, Object>> getDatabaseList() {
		List<Map<String, Object>> dbList = dbdao.selectDatabaseList();
		int idx = 0;
		for(Map<String, Object> mDb : dbList){
			mDb.put("id", ++idx);
			mDb.put("text", mDb.get("Database"));
			mDb.put("items", new Object[] {});
		}
		return dbList;
	}

	@Override
	public List<TableVO> getTableList(String dbName) {
		return dbdao.selectTableList(dbName);
	}

	@Override
	public List<ColumnVO> getColumnList(String tableName) {
		return dbdao.selectColumnList(tableName);
	}
	


}
