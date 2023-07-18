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
<%@include file="/include/common.jsp" %>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>설명</th>
			<th>장르</th>
			<th>상영일</th>
			<th>관객수</th>
		</tr>
		<%
		Connection con=DBCon.getCon();
		Statement stmt=con.createStatement();
		String sql="SELECT * FROM MOVIE_INFO";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
		%>
		<tr>
		<td><%=rs.getInt("MI_NUM")%></td>
		<td><a href="<%=root%>/movie/movieView.jsp?miNum=<%=rs.getInt("MI_NUM")%>"><%=rs.getString("MI_TITLE")%></a></td>
		<!-- pk인 miNum은 절대 중복될 수 없으므로 이것으로 단일 조회 가능! 무조건 1개 이하! -->
		<td><%=rs.getString("MI_DESC")%></td>
		<td><%=rs.getString("MI_GENRE")%></td>
		<td><%=rs.getString("MI_CREDAT")%></td>
		<td><%=rs.getInt("MI_CNT")%></td>
		</tr>
		<%
		}	
		%>
		<tr>
		<td colspan="7" align="right"><button onclick="location.href='/web/movie/movieInsert.jsp'">등록</button></td>
		</tr>
	</table>

</body>
</html>