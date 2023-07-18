package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DataType {

	private static Object attribute;
	
	public static void forward(Map<String,String> map) {
		System.out.println(map.get("test"));
	}
	
	public static void setAttribute(String key, Object value) {
		attribute=value;
	}
	
	public static Object getAttribute(String key) {
		return attribute;
	}
	
	public static void main(String[] args) {
		List<String> strList=new ArrayList<>();
		strList.add("우리");
		strList.add("지금");
		strList.add("나라");
		setAttribute("strList",strList);
		Object obj=getAttribute("strList");
		
		System.out.println(obj==strList); //짱중요!!
		
		List<String> list=(List<String>)obj; //캐스팅
		
		System.out.println(list);

	}

}
