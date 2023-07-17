
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String miNum = request.getParameter("miNum");
if(miNum!=null && !miNum.isEmpty()){
	
	Connection con = DBCon.getCon();
	String sql = "SELECT MI_NUM, MI_TITLE,MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO WHERE MI_NUM=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miNum);
	ResultSet rs = ps.executeQuery();
	if(!rs.next()){
		out.print("<script>");
		out.print("alert('이미 삭제된 영화입니다.');");
		out.print("location.href='" + root + "/movie/movieList.jsp';");
		out.print("</script>");
		return;
	}
%>
<table border="1">
	<tr>
		<th>제목</th>
		<td><%=rs.getString("MI_TITLE")%></td>
	</tr>
	<tr>
		<th>영화내용</th>
		<td><%=rs.getString("MI_DESC")%></td>
	</tr>
	<tr>
		<th>장르</th>
		<td><%=rs.getString("MI_GENRE")%></td>
	</tr>
	<tr>
		<th>개봉일</th>
		<td><%=rs.getString("MI_CREDAT")%></td>
	</tr>
	<tr>
		<th>관객수</th>
		<td><%=rs.getString("MI_CNT")%>명</td>
	</tr>
	<tr> 
		<th colspan="2">
			<button onclick="location.href='<%=root%>/movie/movieUpdate.jsp?miNum=<%=miNum%>'">수정</button>
			<button onclick="location.href='<%=root%>/movie/movieDelete.jsp?miNum=<%=miNum%>'">삭제</button>
		</th>
	</tr>
</table>
<%
}
%>
</body>
</html>