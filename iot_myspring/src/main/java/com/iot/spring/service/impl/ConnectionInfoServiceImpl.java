package com.iot.spring.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.spring.common.dbcon.DBConnector;
import com.iot.spring.dao.ConnectionInfoDAO;
import com.iot.spring.service.ConnectionInfoService;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.TableVO;

@Service
public class ConnectionInfoServiceImpl implements ConnectionInfoService {
	
	@Autowired
	private ConnectionInfoDAO cidao;
	
	@Override
	public List<ConnectionInfoVO> getConnectionList(ConnectionInfoVO ci) {	
		return cidao.selectConnectionList(ci);
	}

	@Override
	public ConnectionInfoVO getConnection(ConnectionInfoVO ci) {
		return ci;
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
	public List<Map<String, Object>> getDatabaseList(HttpSession hs, int ciNo) throws Exception {
		ConnectionInfoVO ci = cidao.selectConnection(ciNo); //선택한 세션에 해당하는 사용자 아이디, 비번 등을 가지고 옴
		hs.setAttribute("ci", ci);// 그걸 세션에 저장
		DBConnector dbc = new DBConnector(ci);// 그 데이터를 이용해서 접속!!
		SqlSession ss = dbc.getSqlSession();
		hs.setAttribute("sqlSession", ss);//접속한 sqlsession을 저장해둠
		List<Map<String, Object>> dbList = cidao.selectDatabaseList(ss); //새로 만든 ss를 통해 데이터베이스를 가지고 옴
		int idx = 0;
		for(Map<String,Object> dbMap : dbList) {
			dbMap.put("id", ciNo + "_" + (++idx));
			dbMap.put("text", dbMap.get("Database"));	
			dbMap.put("items", new Object[] {});
		}	
		return dbList;
	}

	@Override
	public List<TableVO> getTableList(HttpSession hs, String dbName)  {
		 SqlSession ss = (SqlSession)hs.getAttribute("sqlSession");
	     return cidao.selectTable(ss, dbName);
	}

	@Override
	public List<Map<String, Object>> getDatabaseList() {
		return null;
	}
	

}
