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
	<%
	String ciNum = request.getParameter("ciNum");

	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT CI_NUM, CI_NAME, CI_DESC FROM CLASS_INFO";
	sql += " WHERE CI_NUM=" + ciNum;
	ResultSet rs = stmt.executeQuery(sql);

	if (!rs.next()) {
	%>
	<script>
		alert('이미 삭제된 과목입니다.');
		history.back();
	</script>
	<%
	return;
	}
	String ciName = rs.getString("CI_NAME");
	out.print(ciName);
	%>
	<table border="1">
		<tr>
			<th>과목 이름</th>
			<td><%=rs.getString("CI_NAME")%></td>
		</tr>
		<tr>
			<th>과목 설명</th>
			<td><%=rs.getString("CI_DESC")%></td>
		</tr>
		<tr>
			<th colspan="2"><button>수정</button>
				<button>삭제</button></th>
		</tr>
	</table>
</body>
</html>