<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	List<Integer> numList = new ArrayList<>();
	numList.add(10);
	numList.add(5);
	numList.add(21);

	List<Map<String, Integer>> mapList = new ArrayList<>();
	Map<String, Integer> map = new HashMap<>();
	map.put("age", 10);
	mapList.add(map);

	//0번째의 age는 10, 1번째의 age는 5, 2번째의 age는 21 ->2차원 배열
	map = new HashMap<>();
	map.put("age", 5);
	mapList.add(map);

	map = new HashMap<>();
	map.put("age", 21);
	mapList.add(map);

	for (int i = 0; i < numList.size(); i++) {
		for (int j = i + 1; j < numList.size(); j++) {
			if (numList.get(i) > numList.get(j)) {
		int tmp = numList.get(i);
		numList.set(i, numList.get(j));
		numList.set(j, tmp);
			}
		}
	}

	for (int i = 0; i < mapList.size(); i++) {
		for (int j = i + 1; j < mapList.size(); j++) {
			if (mapList.get(i).get("age") > mapList.get(j).get("age")); //비교는 age로
			Map<String, Integer> tmpMap = mapList.get(i);
			mapList.set(i, mapList.get(j)); //age만이 아니라 map 자체의 순서를 바꿔야 함 
			mapList.set(j, tmpMap);

		}
	}
	%>
	<table border="1">
		<%
		for (int i = 0; i < numList.size(); i++) {
		%>

		<tr>
			<td><%=i%></td>
			<td><%=numList.get(i)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<table border="1">
		<%
		for (int i = 0; i < mapList.size(); i++) {
		%>

		<tr>
			<td><%=i%></td>
			<td><%=mapList.get(i).get("age")%></td>
		</tr>
		<%
		}
		%>
	</table>


</body>
</html>