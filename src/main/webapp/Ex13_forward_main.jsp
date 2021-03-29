<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
	
		[요청에 대한 흐름 제어]
		
		1. inclued
		2. forward
		
		공통점 : request 객체를 공유한다 (중요
		차이점 : 제어권 : 	include (제어권 가지고 있다)
						forward (제어권을 넘겨 준다)
						POINT(요청 주소는 동일한데 다른 페이지의 내용을 서비스)
						http://localhost:8080/wedJSP/Ex13_forward_main.jsp?code=C
						
						클라이언트가 요청한 page >> Ex13_forward_main.jsp
						실제로 클라이언트가 받는 page 정보는 >> A.jsp, B.jsp, C.jsp
						
						원리: buffer 주인 >> Ex13_forward_main.jsp >  forward 만나면 buffer를 비우고
																	비워진 buffer > A.jsp, B.jsp, C.jsp 담아서 서비스
		
	*/
	
	String code = request.getParameter("code");
	String viewurl = null;
	
	if(code.equals("A")){
		viewurl = "/forward/A.jsp";
	}else if(code.equals("B")){
		viewurl = "/forward/B.jsp";
	}else if(code.equals("C")){
		viewurl = "/forward/C.jsp";
	}
%>
<jsp:forward page="<%=viewurl%>"></jsp:forward>
<!-- 아래 코드는 의미가 없다: 디자인에 의미가 없다 왜? 어자피 forward를 만나는 순간 buffer를 비우고 다른 페이지를 담고 반환하지 않기 때문이다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 나는 forward main 페이지</h3>
</body>
</html>