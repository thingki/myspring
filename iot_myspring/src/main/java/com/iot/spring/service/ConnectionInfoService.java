package com.iot.spring.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

public interface ConnectionInfoService {
	
	public List<ConnectionInfoVO> getConnectionList(ConnectionInfoVO ci);
	public ConnectionInfoVO getConnection(ConnectionInfoVO ci);
	public Map<String, Object> insertConnectionInfo(Map<String, Object> rmap, ConnectionInfoVO ci);
	public List<Map<String, Object>> getDatabaseList();
	public List<Map<String, Object>> getDatabaseList(HttpSession hs, int ciNo) throws Exception;
	public List<TableVO> getTableList(HttpSession hs, String dbName);
}
