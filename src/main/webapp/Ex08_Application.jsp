<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/*  
		webproject 생성 >> 기본 폴더 구조 제공 >> web.xml (WebApp 환경설정) 제공
		web.xml (환경설정 파일은 서버가 시작되면 가장 먼저 loading (해석되고 실행))
		<welcome-file>default.html</welcome-file> 웹 사이트 기본 페이지 설정
		ex) http://localhost:8090/WebJSP/   >> 기본 페이지 서비스 >> default.html 내용

        /WebJSP >> 웹 프로젝트 이름 , 가상 디렉토리 , context root (문맥 흐름 전체 )
	    >> 웹경로(가상경로)       http://localhost:8090/WebJSP/  
        >> 실경로               D:\bit2021\WEB(Back)\WebLabs\WebJSP

       /WebJSP 웹 프로젝트가 서비스 하는 파일의 기본 경로(default)
       >> D:\bit2021\WEB(Back)\WebLabs\WebJSP\WebContent  (context root)
       >> 192.168.0.028:8090/WebJSP  >> WebContent 안에 자원을 서비스 하겠다
       
       >> 자원(서비스 하는 파일) : html , htm , css , js, json , txt , jsp
       >> WebContent >> a.jsp , b.jsp , c.jsp 3개의 페이지가 공유할 수 있는 자원 ?
    
       >> 모든 자원은 페이지가 scope
       >> a.jsp >  <%  String s="A" ..  > s변수는 a.jsp 가 scope
       >> b.jsp >  <%  String s="A" ..  > s변수는 b.jsp 가 scope
       >> c.jsp >  <%  String s="A" ..  > s변수는 c.jsp 가 scope
       
       >> a.jsp , b.jsp , c.jsp 같은 자원을 ...
       ^^ web.xml 환경설정 >> 서버 시작 >> 가장 먼저 해석
    		   
       <context-param>
  			<description>개발자 마음 ....</description>
  			<param-name>email</param-name>
  			<param-value>webmaster@bit.or.kr</param-value>
  		</context-param>
  		
  	    Application 객체 (WAS제공)	
  	    web.xml 설정 read
  	    
	*/
	/*
	
		webContent 	>> WEB-INF >> lib
					>> WEB-INF >> web.xml
					>> a.jsp
					>> b.html
		
		
		WEB-INF 폴더는 보안폴더
		Client 주소를 알고 있다 하더라도 접근 불가한 경로...
		
		의도적으로 접근하여도 404 전달
		
		개발자 문제점)
		클라이언트가 페이지를 직접 접근 못하게
		WebContent 폴더 안에 자원 >> Client 가 모두 접근 가능
		**실제 현업 개발코드는 WebContent 폴더에 없다
		1. Client 직접 요청하는 파일 : main.html, login.html, register.htm >> WebContent
		2. Client 직접 요청 해서는 안되는 파일: 	WEB-INF >> views >> member >> register.jsp
											WEB-INF >> views >> admin >> admin.jsp
		
	
	*/
%>

<h3>Application</h3>

<%
	String param = application.getInitParameter("email");
	out.print("<h3>" + param + "<h3>");
	out.print("<hr>");
	String param2 = application.getInitParameter("FilePath");
	out.print("<h3>" + param2 + "<h3>");
	out.print("<hr>");
%>


</body>
</html>