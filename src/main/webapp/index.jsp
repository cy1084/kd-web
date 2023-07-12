<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %><!-- directive include -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KD</title>
<link rel="icon" type="image/x-icon" href="<%=root %>/imgs/favicon.ico">
</head>
<body>
<jsp:include page="/include/header.jsp"/> <%--jsp action tag --%>
홈페이지
<%=root %> <!-- 3번째 줄에 include 했으므로 사용 가능  -->
</body>
</html>