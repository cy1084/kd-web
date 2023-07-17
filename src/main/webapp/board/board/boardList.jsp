<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<form>
	
	<input type="text" placeholder="제목을 입력해주세요." name="biTitle" id="biTitle" value="<%=request.getParameter("biTitle")==null?"":request.getParameter("biTitle")%>">
	<!-- 삼항연산자로 검색어가 없을 땐 아무 것도 안나오고 있을 땐 검색창에 검색한 것 나오게 하기 -->
	<input type="text" placeholder="작성자를 입력해주세요." name="biWriter" id="biWriter" value="<%=request.getParameter("biWriter")==null?"":request.getParameter("biWriter")%>">
	<button>검색</button>
	</form>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>삭제</th>
		</tr>

	
	<%
	Connection con = DBCon.getCon();
	String sql = "SELECT BI.* ,UI.UI_NAME FROM BOARD_INFO BI INNER JOIN USER_INFO UI ON BI.BI_WRITER = UI.UI_NUM";
	String biTitle=request.getParameter("biTitle");
	String biWriter=request.getParameter("biWriter");
	
	
	if(!biTitle.isEmpty() && biWriter.isEmpty()){
		sql += " WHERE BI_TITLE LIKE CONCAT('%',?,'%')";
		//sql += " WHERE BI_TITLE LIKE ?";
	}	
	else if(!biWriter.isEmpty() && biTitle.isEmpty()){
		sql += " WHERE BI_WRITER LIKE CONCAT('%',?,'%')";
	}
	else if(!biWriter.isEmpty() && !biTitle.isEmpty()){
		sql += " WHERE BI_WRITER LIKE CONCAT('%',?,'%') AND BI_WRITER LIKE CONCAT('%',?,'%')";
	}
	PreparedStatement ps = con.prepareStatement(sql); //물음표가 있는 쿼리문으로 준비!
	
	if(!biTitle.isEmpty() && biWriter.isEmpty()){
		ps.setString(1,biTitle);
		//ps.setString(1,"%"+biTitle+"%"); //ps가 생기면 그때 첫번째 물음표에 biTitle set!
	}
	else if(!biWriter.isEmpty() && biTitle.isEmpty()){
		ps.setString(1,biWriter);
	}else if(!biWriter.isEmpty() && !biTitle.isEmpty()){
		ps.setString(1,biWriter);
		ps.setString(2,biTitle);
	}
	
	
	ResultSet rs = ps.executeQuery();
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getInt("BI_NUM")%></td>
		<td><a href="<%=root%>/board/board/boardView.jsp?biNum=<%=rs.getInt("BI_NUM")%>"><%=rs.getString("BI_TITLE")%></a></td>		
		<td><%=rs.getString("UI_NAME")%></td>
		<td><%=rs.getString("BI_CREDAT")%></td>
		<td><%=rs.getInt("BI_CNT")%></td>
		<td><button type="button" onclick="location.href='<%=root%>/board/board/boardDelete-ok.jsp?biNum=<%=rs.getInt("BI_NUM")%>'">삭제</button></td>
	</tr>
	<%
	}
	%>
	<tr>
		<td colspan="6" align="right"><button onclick="location.href='/web/board/board/boardInsert.jsp'">등록</button></td>
	</tr>
	</table>
</body>
</html>