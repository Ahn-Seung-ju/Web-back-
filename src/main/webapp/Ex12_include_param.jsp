<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String type = request.getParameter("type");
	String userid = request.getParameter("userid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	type: <%= type %><br>
	userid: <%= userid %>
	<hr>
	<jsp:include page="Ex12_param.jsp">
		<jsp:param value="1004" name="pwd"/>
		<jsp:param value="baseball" name="hobby"/>
	</jsp:include>
	<hr>
</body>
</html>