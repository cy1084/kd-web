<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>before</h3>
<%
RequestDispatcher rd=request.getRequestDispatcher("/forward/after.jsp");
rd.forward(request,response);
//before url을 요청했음에도 after가 나옴 -> forwarding 시킴 (값을 넘김)
%>
</body>
</html>