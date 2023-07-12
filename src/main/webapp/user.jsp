<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
 	Class.forName("org.mariadb.jdbc.Driver");
 	String url="jdbc:mariadb://localhost:3306/kd";
 	String user="root";
 	String password="kd1824java";
 	Connection con=DriverManager.getConnection(url,user,password);
 	Statement stmt=con.createStatement();
 	String sql="SELECT * FROM USER_INFO";
 	ResultSet rs=stmt.executeQuery(sql);
 %>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
		</tr>
		<tr>
			<td>1</td>
			<td>test</td>
			<td>test</td>
			<td>동동이</td>
		</tr>
	</table>
	<%
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getInt("UI_NUM")+"</td>");
		out.println("<td>"+rs.getString("UI_NAME")+"</td>");
		out.println("<td>"+rs.getString("UI_ID")+"</td>");
		out.println("<td>"+rs.getString("UI_PWD")+"</td>");
		out.println("<tr>");
		
	}
	%>
</body>
</html>