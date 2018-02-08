package com.iot.spring.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.spring.dao.ConnectionInfoDAO;
import com.iot.spring.service.ConnectionInfoService;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

@Service
public class ConnectionInfoServiceImpl implements ConnectionInfoService {
	
	@Autowired
	private ConnectionInfoDAO cidao;
	
	@Override
	public List<ConnectionInfoVO> getConnectionInfoList() {
		return cidao.selectConnectionInfoList();
	}

	@Override
	public ConnectionInfoVO getConnectionInfo(ConnectionInfoVO ci) {
		return cidao.selectConnectionInfo(ci);
	}

	@Override
	public Map<String, Object> insertConnectionInfo(Map<String, Object> rmap, ConnectionInfoVO ci) {
		int result = cidao.insertConnectionInfo(ci);
		rmap.put("msg", "성공");
		if(result!=1) {
			rmap.put("msg", "실패");
		}
		return rmap;
	}

	@Override
	public List<Map<String, Object>> getDatabaseList() {
		List<Map<String, Object>> dbList = cidao.selectDatabaseList();
		int idx = 0;
		for(Map<String, Object> mDb : dbList){
			mDb.put("id", ++idx);
		}
		return dbList;
	}

	@Override
	public List<TableVO> getTableList(String dbName) {
		return cidao.selectTable(dbName);
	}
	
	
	

}
