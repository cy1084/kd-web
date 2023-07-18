<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/include/common.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String miNum = request.getParameter("miNum");
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miCredat = request.getParameter("miCredat");
	String miCnt = request.getParameter("miCnt");

	Connection con = DBCon.getCon();
	String sql = "UPDATE MOVIE_INFO";
	sql += " SET MI_TITLE=?";
	sql += " MI_DESC=?";
	sql += " MI_CREDAT=?";
	sql += " MI_CNT=?";
	sql += " WHERE MI_NUM=?";

	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miTitle);
	ps.setString(2, miDesc);
	ps.setString(3, miCredat);
	ps.setString(4, miCnt);
	ps.setString(5, miNum);

	int result = ps.executeUpdate();
	if (result == 1) {
	%>
	<script>
alert('수정이 완료되었습니다.');
location.href='<%=root%>
		/movie2/movieList2.jsp';
	</script>
	<%
	}
	%>

</body>
</html>