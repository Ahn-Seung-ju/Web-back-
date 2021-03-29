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
	접속한 클라이언트 브라우저가 가지고 있는(domain 별로) Cookie read
 -->
<%

	Cookie[] cs = request.getCookies();
	if(cs != null||cs.length > 0){
		for(Cookie c : cs){
			out.print(c.getName() + "<br>");
			out.print(c.getValue() + "<br>");
			out.print(c.getMaxAge() + "<br>");//-1 (소멸 시간이 없다: 메모리만 사용)
			out.print(c.getDomain() + "<br>");
		}
	}

%>
</body>
</html>