<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 화면</title>
<%
String uiNum = request.getParameter("uiNum");

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "SELECT UI_NUM,UI_NAME,UI_ID,UI_PWD FROM USER_INFO";
sql += " WHERE UI_NUM=" + uiNum;
ResultSet rs = stmt.executeQuery(sql);

if (!rs.next()) {
%>
<script>
	alert('이미 탈퇴한 회원입니다.');
	history.back();
</script>
<%
return;
}
String uiId = rs.getString("UI_ID");
out.print(uiId);
%>
<table border="1">
	<tr>
		<th>이름</th>
		<td><%=rs.getString("UI_NAME")%></td>
	</tr>
	<tr>
		<th>아이디</th>
		<td><%=rs.getString("UI_ID")%></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><%=rs.getString("UI_PWD")%></td>
	</tr>
	<tr>
		<th colspan="2"><button>수정</button><button>삭제</button></th>
	</tr>
</table>
</head>
<body>

</body>
</html>