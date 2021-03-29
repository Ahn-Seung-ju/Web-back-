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

	정보(데이터) > 저장 > 장소(where)
	
	클라이언트(개인 로컬 PC) or 서버 (웹 서버 or DB 서버)
	
	정보(데이터, 자료) >> 어디에 저장(보관)
	고민(기준점): 보안 요소 (정보의 중요성), 소멸(일시적인 데이터, 영속적인 데이터)
	
	Client(local PC: 웹브라우져)
	1. Cookie(메모리 쿠키, 파일 쿠키(local 디스크 (txt) 파일로: 내용 (암호화) > 소멸시기
		단점: 크기 제한적, 사용 조금 불편
	2.Local storage(key, value) 형태롤 저장 가능한 구조
	
	Server(웹 서버: 아파치 톰켓(WAS))
	1. server memory: session객체 (사이트 접속하는 사용자마다 부여하는 고유한 식별값) >> 서버 리부팅, 서버를 끄거나 정지하거나 >> 데이터 소멸
	1. server memory: Application객체 (사이트 접속하는 모든 사용자가 공유하는 객체) >> 서버 리부팅, 서버를 끄거나 정지하거나 >> 데이터 소멸
	3. server 영속적(서버 리부팅, 정지) 남아있는 데이터: 파일.txt >> 관리가 힘듬
	4. DB server: 보안, 영속관리가 가능 ..... (비용이 추가)

 -->
 <%
 
  Cookie mycookie = new Cookie("cname","1004");
 //쿠키 객체 생성
 //내사이터에 접속한 브라우저(Client)에게 전달 >> response
 
 	response.addCookie(mycookie);
 %>
 <a href="Ex17_Cookie_Read.jsp">Cookie read</a>
</body>
</html>