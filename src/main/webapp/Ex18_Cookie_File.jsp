<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1. 메모리 쿠키(브라우져 쿠키): Client가 강제로 지우지 않는 한...브라우져가 닫기 전까지는 유효
		소멸 타입: getMaxAge() > -1
		
	2. 파일 쿠키(소멸시간을 가지고 있다): Client가 강제로 지우지 않는 한 정해진 시간까지 유효(2050년 12월 12일)
		setMaxge(60) >> 60초
		
		30일
		(30*24*60*60)일 시 분 초
		setMaxAge(30*24*60*60)

 -->
<%

	Cookie co = new Cookie("bit", "hong");
	co.setMaxAge(30*24*60*60);//30일 
	response.addCookie(co);

%>
</body>
</html>