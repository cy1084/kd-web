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
List<Map<String,String>> list= new ArrayList<>();
Map<String,String> map=new HashMap<>();
map.put("name","김세희");
map.put("point","80");
map.put("addr","서울");
list.add(map);

map=new HashMap<>();
map.put("name","김용준");
map.put("point","77");
map.put("addr","부산");
list.add(map);

map=new HashMap<>();
map.put("name","이원준");
map.put("point","99");
map.put("addr","대전");
list.add(map);

map=new HashMap<>();
map.put("name","이원기");
map.put("point","66");
map.put("addr","대구");
list.add(map);

map=new HashMap<>();
map.put("name","이보성");
map.put("point","55");
map.put("addr","경기");
list.add(map);

map=new HashMap<>();
map.put("name","이왕균");
map.put("point","54");
map.put("addr","광주");
list.add(map);

Map<String,String> tmpMap=list.get(0);
String pointStr=tmpMap.get("point");

int min=Integer.parseInt(pointStr);
int max=Integer.parseInt(pointStr);
String minName="";
String maxName="";
String minAddr="";
String maxAddr="";

for(int i=0;i<list.size();i++){
	//int num=Integer.parseInt(list.get(i).get("point"));
	if(min>Integer.parseInt(list.get(i).get("point"))){
		min=Integer.parseInt(list.get(i).get("point"));
		minName=list.get(i).get("name");
		minAddr=list.get(i).get("addr");
		
	}
	if(max<Integer.parseInt(list.get(i).get("point"))){
		max=Integer.parseInt(list.get(i).get("point"));	
		maxName=list.get(i).get("name");
		maxAddr=list.get(i).get("addr");
	}
	}

%>

<table border="1">
		<tr>
			<th>최고점</th>
			<td><%=maxName%></td>
			<td><%=maxAddr%></td>
			<td><%=max%></td>
		</tr>
		<tr>
			<th>최저점</th>
			<td><%=minName%></td>
			<td><%=minAddr%></td>
			<td><%=min%></td>
			
		</tr>


	</table>

</body>
</html>