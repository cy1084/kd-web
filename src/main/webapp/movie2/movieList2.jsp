<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/include/common.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	Connection con = DBCon.getCon();
	String sql = "SELECT * FROM MOVIE_INFO";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>장르</th>
			<th>개봉일</th>
			<th>관객수</th>
			
		</tr>
	

	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString("MI_NUM")%></td>
		<td><a href="<%=root%>/movie2/movieView2.jsp?miNum=<%=rs.getString("MI_NUM")%>"><%=rs.getString("MI_TITLE")%></a></td>
		<td><%=rs.getString("MI_DESC") %></td>
		<td><%=rs.getString("MI_GENRE")%></td>
		<td><%=rs.getString("MI_CREDAT")%></td>
		<td><%=rs.getString("MI_CNT")%></td>
	</tr>
	
	<%
	}
	%>
	<tr>
		<td colspan="6" align="right"><button onclick="location.href='<%=root%>/movie2/movieInsert2.jsp'">영화 등록</button></td>
	</tr>
	</table>
</body>
</html>