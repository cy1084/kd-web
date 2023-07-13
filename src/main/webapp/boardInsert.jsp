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
	<%
	String biTitle = request.getParameter("biTitle");
	if (biTitle != null && biTitle.length() != 0) {
		String biContent = request.getParameter("biContent");
		String biWriter = request.getParameter("biWriter");
		out.println("biTitle: " + biTitle);
		out.println("biContent: " + biContent);
		out.println("biWriter: " + biWriter);
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_TITLE,BI_CONTENT,BI_WRITER)";
		sql += "VALUES('" + biTitle + "','" + biContent + "','" + biWriter + "')";
		int result = stmt.executeUpdate(sql);
		if (result == 1) {
	%>
	<script>
		alert("게시글 등록이 완료되었습니다.");
		location.href = "/web/boardInsert.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<label for="biTitle">게시글 제목</label> 
		<input type="text" id="biTitle" name="biTitle"><br>
		<label for="biContent">게시글 내용</label> 
		<input type="text" id="biContent" name="biContent"><br> 
		<label for="biWriter">작성자</label> 
		<input type="text" id="biWriter" name="biWriter"><br>
		<button>등록</button>
	</form>

</body>
</html>