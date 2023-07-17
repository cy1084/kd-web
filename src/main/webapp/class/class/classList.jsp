
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과목 등록</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>과목 이름</th>
			<th>과목 설명</th>
		</tr>
		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT CI_NUM, CI_NAME, CI_DESC FROM CLASS_INFO";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("CI_NUM")%></td>
			<td><%=rs.getString("CI_NAME")%></td>
			<td><%=rs.getString("CI_DESC")%></td>
			
		</tr>
		
	</table>
	<%
	}
	%>


</body>
</html>
