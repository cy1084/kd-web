<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
	String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, DATE_FORMAT(MI_CREDAT,'%Y-%m-%d') MI_CREDAT, MI_CNT FROM MOVIE_INFO WHERE MI_NUM=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, miNum);
	ResultSet rs = ps.executeQuery();

	if (!rs.next()) {
	%>
	<script>
		alert('이미 삭제된 영화입니다.');
		history.back();
	</script>
	<%
	return;
	}
	%>
	<form action="<%=root%>/movie2/movieUpdate2-ok.jsp">
		<input type="hidden" name="miNum" value="<%=miNum%>">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" id="miTitle" name="miTitle"
					value="<%=rs.getString("MI_TITLE")%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="miDesc" name="miDesc" style="resize: none"
						cols="30" rows="15"><%=rs.getString("MI_DESC")%></textarea></td>
			</tr>
			<tr>
				<th>장르</th>
				<td><select id="miGenre" name="miGenre">
						<option value="">장르</option>
						<option value="코미디">코미디</option>
						<option value="S/F">S/F</option>
						<option value="스릴러">스릴러</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
				</select></td>
			</tr>
			<tr>
				<th>개봉일</th>
				<td><input type="date" id="miCredat" name="miCredat"
					value="<%=rs.getString("MI_CREDAT")%>"></td>
			</tr>
			<tr>
				<th>관객수</th>
				<td><input type="number" id="miCnt" name="miCnt"
					value="<%=rs.getString("MI_CNT")%>"></td>
			</tr>
			<tr>
				<th colspan="6"><button>수정</button>
			</tr>


		</table>
	</form>

</body>
</html>