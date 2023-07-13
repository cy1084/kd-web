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
	<jsp:include page="/include/header.jsp" />
	<h3>회원가입 페이지</h3>

	<%
	String uiId = request.getParameter("uiId");
	if (uiId != null && uiId.length() != 0) { //null이 아니고 빈 문자열이 아니라면

		String uiPwd = request.getParameter("uiPwd");
		String uiName = request.getParameter("uiName");
		out.println("uiId: " + uiId);
		out.println("uiPwd: " + uiPwd);
		out.println("uiName: " + uiName);
		Connection con=DBCon.getCon();
		Statement stmt=con.createStatement(); //사용자에게 값을 받아, 쿼리문이 바뀌는 건 사용하면 안됨
		String sql="INSERT INTO USER_INFO(UI_ID,UI_PWD,UI_NAME)";
		sql += "VALUES('"+uiId+"','"+uiPwd+"','"+uiName+"')";
		int result=stmt.executeUpdate(sql);
		if(result==1){
	%>
	<script>
	alert("<%=uiName%>님 회원가입이 성공하였습니다. 로그인을 해주세요."); 
	location.href="/web/login.jsp";
	</script>
	<%		
		}
	}
	%>
	<form>
		<!-- action 태그의 context root와 method의 get은 안 써도 defalut 값  -->
		<label for="uiId">아이디</label> 
		<input type="text" id="uiId" name="uiId"><br>
		<label for="uiPwd">비밀번호</label> 
		<input type="password" id="uiPwd" name="uiPwd"><br> <label for="uiName">이름</label> 
		<input type="text" id="uiName" name="uiName"><br>
		<button>등록</button>
	</form>

</body>
</html>