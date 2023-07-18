package com.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI(); //요청 주소
		System.out.println(uri);
		int idx=uri.lastIndexOf("/");
		uri=uri.substring(idx+1);
		
		String url="/WEB-INF/views/test/";
		if("list".equals(uri)) {
		//if(uri=="list") { //string은 반드시 equals로 비교!! 
			url += "testList.jsp";
		}
		
		List<String> strList=new ArrayList<>();
		strList.add("우리");
		strList.add("지금");
		strList.add("나라");
		request.setAttribute("strList", strList);
		
	
		RequestDispatcher rd=request.getRequestDispatcher("");
		
		rd.forward(request, response);
				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doGet(request, response);
	}
	
	public static void main(String[] args) {
		//String uri="/web/test/list"; 
		//int idx=uri.lastIndexOf("/"); //뒤에서부터 index 
		//uri=uri.substring(idx+1); // 슬래쉬 다음부터 
		//System.out.println(uri); //list
	}

}
