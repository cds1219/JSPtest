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
	<%!	//어느 위치에 해도 괜찮다(하지만 가독성을 위해)
		Date today;	//멤버변수
		public void jspInit(){//메서드
			myMethod();
		}
		private void myMethod(){
			today=new Date();
		}
	%>
	
	<%=	//out.print(안에 ;은 들어가면 안된다.);
		today.toString()
	%>
	
	<%@ include file="includeTest.jsp" %>
	
	<%
		FileWriter fw=new FileWriter("test.txt");
		fw.write(today.toString());
		fw.close();
	%>
	
	<%-- <% String age=request.getParameter("age"); %>
	age : <%= age %> --%>
	
	age : <%= request.getParameter("age") %>
	
</body>
</html>