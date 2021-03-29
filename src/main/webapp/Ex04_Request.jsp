
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//1. 한글처리
		request.setCharacterEncoding("UTF-8");
	//2. 데이터 받기 (request 객체)
		String id = request.getParameter("id");
		
		//request 객체는 (WAS 내장객체)
		//1. 요청 페이지당 한개가 자동 생성(request)
		//2. 클라이언트 서버에 전송을 요청 (클라이언트 수 많은 정보가 전다 >> 정보를 받는 객체 request)
		//입력값, IP, 브라우저 정보, 전송 방식 ...
		// reaquest 내장 객체는 클라이언트에서 서버로 요청할때 생성되는
		//HTTPServletRequest 타입을 갖는 객체가 자동 생성되고 그 주소를 request 참조
		//HTTPServletRequest request = new HTTPServletRequest();
	
	
	//3. 로직처리(업무 DB 연결...)
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%= id %><hr>
	접속한 클라이언트 IP: <%= request.getRemoteAddr() %><hr>
	서버 (요청한 인코딩): <%= request.getCharacterEncoding() %><hr>
	전송방식: <%= request.getMethod() %><hr>
	포트: <%= request.getServerPort() %><hr>
	context root(사이트명, 가상디렉토리, 홈디렉토리, default 웹 경로): <%= request.getContextPath() %>
</body>
</html>