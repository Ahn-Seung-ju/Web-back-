<%@page import="java.util.Calendar"%>
<%@page import="kr.or.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Emp e = new Emp();
	e.setEmpname("홍길동");
	e.setEmpno(1000);
	
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	출력(표현)<br>
	사번: <%= e.getEmpno() %><br>
	이름: <%= e.getEmpname() %><br>
	
	현재 년도 <%= year %>
</body>
</html>