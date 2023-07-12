<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html로 구구단 만들어 보기!! -->
	<table border="1">
		<%
		for (int i = 1; i <= 9; i++) {
		%>
		<tr>
			<td><%=i%></td>
		</tr>
			
		<%
		for(int j=1;j<=9;j++){			
		%>
		<td><%=j%> X <%=i%>= <%=j * i%></td>
		<% 
			}
		}
		%>
	</table>

</body>
</html>