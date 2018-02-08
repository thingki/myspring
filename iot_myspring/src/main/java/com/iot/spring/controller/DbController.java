package com.iot.spring.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.spring.service.DbService;
import com.iot.spring.vo.ColumnVO;
import com.iot.spring.vo.TableVO;

@Controller
@RequestMapping("db")
public class DbController {
	
	private static final Logger log = LoggerFactory.getLogger(ConnectionController.class);
	@Autowired
	private DbService ds;
	
	@RequestMapping(value="/db_list", method=RequestMethod.GET)
	public @ResponseBody Map<String, Object>getDatabaseList(Map<String, Object> map) {
		List<Map<String, Object>>dbList = ds.getDatabaseList();
		log.info("DBList=>{}", dbList);
		map.put("dbList", dbList);
		return map;
	}
	
	
	@RequestMapping(value="/tables/{dbName}", method=RequestMethod.GET)
	public @ResponseBody List<TableVO>getTableList
	(@PathVariable ("dbName")String dbName, Map<String, Object> map) {
		List<TableVO>tableList = ds.getTableList(dbName);
		map.put("tableList", tableList);
		return tableList;
	}
	
	@RequestMapping(value="/column/{tableName}", method=RequestMethod.GET)
	public @ResponseBody List<ColumnVO>getColumnList
	(@PathVariable ("dbName")String tableName, Map<String, Object> map) {
		List<ColumnVO>ColumnList = ds.getColumnList(tableName);
		map.put("ColumnList", ColumnList);
		return ColumnList;
	}
	

}
