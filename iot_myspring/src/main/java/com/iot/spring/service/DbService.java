package com.iot.spring.service;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.ColumnVO;
import com.iot.spring.vo.TableVO;

public interface DbService {
	
	public List<Map<String, Object>> getDatabaseList();
	public List<TableVO> getTableList(String dbName);
	public List<ColumnVO> getColumnList(String tableName);
}
