<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/commonerror.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	페이지마다 예외상황에 대한 처리 페이지 설정
	
	error:  최종 배포시....
			개발시에는 예외를 보아야해서
 -->
<%

	String data = request.getParameter("name");

	String data2 = data.toLowerCase();// null 함수 적용 못함
%>
전달받은 내용: <%= data %>
</body>
</html>