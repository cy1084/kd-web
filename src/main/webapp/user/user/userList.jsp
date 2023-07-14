<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
		</tr>
		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT UI_NUM,UI_NAME, UI_ID, UI_PWD FROM USER_INFO";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt("UI_NUM")%></td>
			<td><%=rs.getString("UI_NAME")%></td>
			<td><%=rs.getString("UI_ID")%></td>
			<td><%=rs.getString("UI_PWD")%></td>
		</tr>
	</table>
	<%
	}
	%>

</body>
</html>