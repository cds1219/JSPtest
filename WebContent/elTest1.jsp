<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ "10"+"21" }<br>
	${ param.name }<br>
	위<br>
	${ name }<br>
	<%
		request.setAttribute("address", "대한민국");
	%>
	<jsp:forward page="elTest2.jsp"></jsp:forward>
	아래
</body>
</html>