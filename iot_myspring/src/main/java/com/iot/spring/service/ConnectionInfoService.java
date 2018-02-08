package com.iot.spring.service;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

public interface ConnectionInfoService {
	
	public List<ConnectionInfoVO> getConnectionInfoList();
	public ConnectionInfoVO getConnectionInfo(ConnectionInfoVO ci);
	public Map<String, Object> insertConnectionInfo(Map<String, Object> rmap, ConnectionInfoVO ci);
	public List<Map<String, Object>> getDatabaseList();
	public List<TableVO> getTableList(String dbName);
}
