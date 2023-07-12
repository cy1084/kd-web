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
	List<String> names = new ArrayList<>();
	names.add("김세희");
	names.add("김용준");
	names.add("이원준");
	names.add("이원기");
	names.add("이보성");
	names.add("이왕균");

	List<Integer> points = new ArrayList<>();
	points.add(80);
	points.add(77);
	points.add(99);
	points.add(66);
	points.add(55);
	points.add(54);

	List<String> addrs = new ArrayList<>();
	addrs.add("서울");
	addrs.add("부산");
	addrs.add("대전");
	addrs.add("대구");
	addrs.add("경기");
	addrs.add("광주");

	int highest = points.get(0);
	int lowest = points.get(0);
	String minName="";
	String maxName="";
	String minAddrs="";
	String maxAddrs="";
	
	

	for (int i = 1; i < points.size(); i++) {
		int num = points.get(i);
		if (num > highest) {
			highest = num;	
			maxName=names.get(i);
			maxAddrs=addrs.get(i);
		}
		if (num < lowest) {
			lowest = num;
			minName=names.get(i);
			minAddrs=addrs.get(i);
		}
	}
	%>
	<table border="1">
		<tr>
			<th>최고점</th>
			<td><%=maxName%></td>
			<td><%=maxAddrs%></td>
			<td><%=highest%></td>
		</tr>
		<tr>
			<th>최저점</th>
			<td><%=minName%></td>
			<td><%=minName%></td>
			<td><%=lowest%></td>
		</tr>
			
		</tr>


	</table>

</body>
</html>