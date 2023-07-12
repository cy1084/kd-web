<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%
String root=request.getContextPath(); //절대 경로
%>
	<div>
		<a href="<%=root%>/">Home</a>
		<a href="<%=root%>/login.jsp">Login</a>
		<a href="<%=root%>/join.jsp">Join</a>		
	</div>
	
