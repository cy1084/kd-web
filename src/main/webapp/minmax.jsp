<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<Integer> list = new ArrayList<>();
	Random r = new Random();
	int rNum = r.nextInt(100) + 1;
	list.add(rNum);
	int min = list.get(0);
	int max = list.get(0);
	
//갤러리에 선생님꺼 있음
	for (int i = 1; i < list.size(); i++) {
		int num=list.get(i);
		if (num<min) {
			min = num;
			}
		if (num>max) {
			max = num;
			} else
		i--;
		}
	
	%>
	<table border="1">
		<tr>
			<th>최대값</th>
			<td><%=max%></td>
		</tr>
		<tr>
			<th>최소값</th>
			<td><%=min%></td>
		</tr>
		

	</table>

</body>
</html>