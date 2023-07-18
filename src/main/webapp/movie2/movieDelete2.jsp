
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
<%@ include file="/include/common.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String miNum = request.getParameter("miNum");
	Connection con = DBCon.getCon();
	String sql = "DELETE FROM MOVIE_INFO WHERE MI_NUM=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miNum);

	ResultSet rs = ps.executeQuery();
	if (!rs.next()) {
	%>
	<script>
	alert('이미 삭제된 영화입니다.');
	location.href='<%=root%>
		/movie2/movieList2.jsp';
	</script>
	<%
	return;
	}
	%>
	
	<script>
	alert('정상적으로 삭제되었습니다.');
	location.href='<%=root%>/movie2/movieList2.jsp';
</script>

</body>
</html>