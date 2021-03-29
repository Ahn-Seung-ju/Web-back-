<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- web.xml 설정한 페이지로 이 -->
	<%

		String data = request.getParameter("name");

		String data2 = data.toLowerCase();// null 함수 적용 못함
	%>
전달받은 내용: <%= data %>
</body>
</html>