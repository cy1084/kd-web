
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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String ciName=request.getParameter("ciName");
	if(ciName != null && ciName.length() !=0){
		String ciDesc=request.getParameter("ciDesc");
		
		Connection con=DBCon.getCon();
		Statement stmt=con.createStatement();
		String sql="INSERT INTO CLASS_INFO(CI_NAME, CI_DESC)";
		sql += "VALUES('" + ciName + "','" + ciDesc + "')";
		int result= stmt.executeUpdate(sql);
		if(result ==1){
	
	%>
	<script>
		alert('과목 등록이 완료되었습니다.');
		location.href='/web/class/class/classList.jsp';
	</script>
	<%
	}
		}
	%>
	<form>
		<table border="1">
			<tr>
				<th>과목 이름</th>
				<td><input type="text" id="ciName" name="ciName"></td>
			</tr>
			<tr>
				<th>과목 설명</th>
				<td><input type="text" id="ciDesc" name="ciDesc"></td>
			</tr>
			<tr>
				<th colspan="2"><button>등록</button></th>
			</tr>

		</table>
	</form>
</body>
</html>