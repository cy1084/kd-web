<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String str="1";
    %> 
    <!-- 클래스 내부 선언 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print(str); //1
String str="2";
out.print(str); //2
%>
<!-- 메소드 내부 선언 -->
</body>
</html>