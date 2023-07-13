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
String sql="SELECT * FROM CLASS_INFO";
ResultSet rs=stmt.executeQuery(sql);
%>
<table border="1">
<tr>
<th>번호</th>
<td><%=rs.getString("CI_NAME")%></td>
<th>과목 이름</th>
<th>과목 설명</th>
</tr>

</table>

<%
while(rs.next()){
	out.println("<tr>");
	out.println("<td>"+rs.getInt("CI_NUM")+"</td>"); 
	out.println("<td>"+rs.getString("CI_NAME")+"</td>");
	out.println("<td>"+rs.getString("CI_DESC")+"</td>");
	out.println("<tr>");
}
%>

</body>
</html>