<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date, java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	현재 시각 : 
	<%
		Date today=new Date();
		out.append(today.toString());
		//out.close(); JSP에서는 하지말 것
	%>
	
	<%@ include file="includeTest.jsp" %>
	
	<%
		FileWriter fw=new FileWriter("test.txt");
		fw.write(today.toString());
		fw.close();
	%>
</body>
</html>