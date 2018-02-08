package com.iot.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.spring.service.ConnectionInfoService;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

@Controller
@RequestMapping("connection")
public class ConnectionController {
	
	private static final Logger log = LoggerFactory.getLogger(ConnectionController.class);
	@Autowired
	private ObjectMapper om;
	
	@Autowired
	private ConnectionInfoService cs;
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertConnection(@RequestParam Map<String, Object> map) {
		ConnectionInfoVO ci = om.convertValue(map, ConnectionInfoVO.class);
		
		log.info("ConnectionInfoVO=>{}", ci);
		Map<String, Object> rmap = new HashMap<String, Object>();
		cs.insertConnectionInfo(rmap, ci);
		return rmap;
	}
	
	@RequestMapping(value="/db_list", method=RequestMethod.GET)
	public @ResponseBody List<Map<String, Object>>getDatabaseList(Map<String, Object> map) {
		List<Map<String, Object>>dbList = cs.getDatabaseList();
		map.put("dbList", dbList);
		return dbList;
	}
	
	@RequestMapping(value="/tables/{dbName}", method=RequestMethod.GET)
	public @ResponseBody List<TableVO>getTableList
	(@PathVariable ("dbName")String dbName, Map<String, Object> map) {
		List<TableVO>tableList = cs.getTableList(dbName);
		map.put("tableList", tableList);
		return tableList;
	}
}
