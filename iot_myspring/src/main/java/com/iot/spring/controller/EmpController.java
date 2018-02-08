package com.iot.spring.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iot.spring.service.EmpService;
import com.iot.spring.vo.Emp;

@Controller
@RequestMapping("/emp")
public class EmpController {
		
		private static final Logger log = LoggerFactory.getLogger(EmpController.class);
		@Autowired
		private EmpService es;
		
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public String getEmpList(Model m) {
			List<Emp> empList = es.getEmpList();
			m.addAttribute("empList", empList);
			return "/emp/jstl_list";
		}
		
		@RequestMapping(value="/lista", method=RequestMethod.GET)
		public @ResponseBody List<Emp> getEmpListAjax(Model m) {
			List<Emp> empList = es.getEmpList();
			return empList;
		}
		
		@RequestMapping(value="/insert", method = RequestMethod.GET)   
		   public ModelAndView insertEmp(         
		         @Valid Emp empDTO, Errors er,
		         ModelAndView m) throws Exception {      
		      log.info("insert result => {}", empDTO);   
		      
		      if(er.hasErrors()) {
		         log.info("error => {}", er);
		         throw new Exception(er.getAllErrors().get(0).getDefaultMessage());         
		      }      
		      int result = es.insertEmp(empDTO);
		      if(result==1) {
			      m.addObject("result", "성공");
		      }
		      m.addObject("result", "실패"); 
		      m.setViewName("emp/write");      
		      return m;      
		   }
		
		@RequestMapping(value="/view", method = RequestMethod.GET)	
		public String getEmp(			
				@RequestParam Map<String, String> map,
				Model m) {
			
			log.info("mpa=>{}", map);			
			Emp emp = es.getEmp(map);	
			m.addAttribute("emp",emp);		
			return "emp/view";		
		}		
		
		
		@RequestMapping(value="/delete", method = RequestMethod.GET)	
		public String deleteEmp(			
				@RequestParam Map<String, String> map,
				Model m) {
			
			log.info("map=>{}", map);	
			
			m.addAttribute("msg", "실패");		
			int result = es.deleteEmp(map);			
			if(result != 0) {
				m.addAttribute("msg", "성공");			
			}		
			return "emp/jstl_list";		
		}
		
		@RequestMapping(value="/update", method = RequestMethod.GET)	
		public String updateEmp(			
				@RequestParam Map<String, String> map,
				Model m) {
			
			log.info("map=>{}", map);
			
			m.addAttribute("msg", "실패");		
			int result = es.updateEmp(map);			
			
			if(result != 0) {
				m.addAttribute("msg", "성공");			
			}
			
			return "emp/write";		
		}
}
