package com.iot.spring.vo;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Test {
	
	public static void main(String[] args) throws JsonParseException, JsonMappingException, IOException {
		ObjectMapper om = new ObjectMapper();
		String json = "{\r\n" + 
				"   \"message\":{\r\n" + 
				"      \"@type\":\"response\",\r\n" + 
				"      \"@service\":\"naverservice.labs.api\",\r\n" + 
				"      \"@version\":\"1.0.0\",\r\n" + 
				"      \"result\":{\r\n" + 
				"         \"translatedText\":\"속성 'empSal에 필요한 형식 'int''형식''java.lang.String의 속성 값으로 변환하려고 할;입력 문자열입니다.\\\"A\\\"동안 중첩된 예외는 java.lang.NumberFormatException:지 못 했습니다.\",\r\n" + 
				"         \"srcLangType\":\"en\"\r\n" + 
				"      }\r\n" + 
				"   }\r\n" + 
				"}";
		NaverMsg nm = om.readValue(json, NaverMsg.class);
		System.out.println(nm.getMessage().getResult().getTranslatedText());
	}
}
