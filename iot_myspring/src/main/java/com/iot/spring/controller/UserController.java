package com.iot.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.spring.service.UserService;
import com.iot.spring.vo.UserInfo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService us;
	@Autowired
	private ObjectMapper om;

	@RequestMapping(value="/user_list", method=RequestMethod.GET)
	public @ResponseBody List<UserInfo> getUserListAjax(){
		List<UserInfo> userList = us.getUserList();
		return userList;
	}
	
	
	@RequestMapping(value="/user_signup", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertUser(@RequestParam Map<String, Object> map){
		UserInfo ui = om.convertValue(map, UserInfo.class);
		Map<String, Object> rmap = new HashMap<String, Object>();
		us.insertUser(rmap, ui);
		return rmap;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> login(@Valid UserInfo ui, HttpSession hs){
		UserInfo userList = us.getUserInfo(ui);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("loginOk", false);
		map.put("msg", "로그인 실패");
		if(userList!=null) {
			map.put("msg", "로그인 성공");
			map.put("loginOk", true);
			hs.setAttribute("user", userList);
			hs.setAttribute("isLogin", true);
		}
		return map;
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertUser2(@Valid UserInfo ui){
		Map<String, Object> rmap = new HashMap<String, Object>();
		log.info("ui=>{}", ui);
		us.insertUser2(rmap, ui);
		return rmap;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public @ResponseBody List<UserInfo> getUserInfoList(UserInfo ui){
		return us.getUserList(ui);
	}
	
}
