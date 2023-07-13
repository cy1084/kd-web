<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.vo.HumanVO"%>
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
String[] names={"김홍균","김아영","이명관","이왕균","이보성"};
int[] ages={10,11,12,13,14};
String[] addrs={"서울","대전","대구","부산","광주"};

Random r=new Random();
Set<String> nameSet=new HashSet<>();
Set<Integer> ageSet=new HashSet<>();
Set<String> addrSet=new HashSet<>();
List<HumanVO> humanList=new ArrayList<>();

while(nameSet.size()<5){
	int rNum=r.nextInt(5);
	if(nameSet.add(names[rNum])||(ageSet.add(ages[rNum]))||(addrSet.add(addrs[rNum]))){
		HumanVO human=new HumanVO();
		human.setName(names[rNum]);
		human.setAge(ages[rNum]);
		human.setAddr(addrs[rNum]);
		humanList.add(human);
	
	}
}

for(HumanVO human:humanList){
	out.println(human+"<br>");
}

%>


</body>
</html>