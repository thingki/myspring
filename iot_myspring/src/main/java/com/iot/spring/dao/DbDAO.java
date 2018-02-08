package com.iot.spring.dao;

import java.util.List;
import java.util.Map;

import com.iot.spring.vo.ColumnVO;
import com.iot.spring.vo.TableVO;

public interface DbDAO {
	public List<ColumnVO> selectColumnList(String tableName);
	public List<Map<String, Object>> selectDatabaseList();
	public List<TableVO> selectTableList(String dbName);
}
