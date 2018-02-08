package com.iot.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iot.spring.service.UserService;
import com.iot.spring.vo.ConnectionInfoVO;
import com.iot.spring.vo.Emp;
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
	
	@RequestMapping(value="/user_login", method=RequestMethod.GET)
	public ModelAndView getUserAjax(@Valid UserInfo insertUi, Errors er, ModelAndView m) throws Exception{
		log.info("insert result => {}", insertUi);
		if (er.hasErrors()) {
			log.info("error => {}", er);
			throw new Exception(er.getAllErrors().get(0).getDefaultMessage());
		}
		
		HashMap<String, Object> result = us.getUser(insertUi);
		m.addObject("msg", result.get("msg"));
		m.setViewName("index");
		System.out.println(result.get("msg"));
		return m;
	}
	
	@RequestMapping(value="/user_signup", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> insertUser(@RequestParam Map<String, Object> map){
		UserInfo ui = om.convertValue(map, UserInfo.class);
		Map<String, Object> rmap = new HashMap<String, Object>();
		us.insertUser(rmap, ui);
		return rmap;
	}

}
