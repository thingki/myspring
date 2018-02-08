package com.iot.spring.dao;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

public interface ConnectionInfoDAO {
	public ConnectionInfoVO selectConnectionInfo(ConnectionInfoVO ci);
	public List<ConnectionInfoVO> selectConnectionInfoList();
	public int insertConnectionInfo(ConnectionInfoVO ci);
	public List<Map<String, Object>> selectDatabaseList();
	public List<TableVO> selectTable(String dbName);
}
