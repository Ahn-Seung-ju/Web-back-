<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
      table , tr , td {border: 2px solid black; border-collapse: collapse; }
   </style>
</head>
<body>
	<table style="width: 700px">
      <tr>
         <td colspan="2">
              <jsp:include page="/commonmodule/top.jsp"></jsp:include>
         </td>
      </tr>
<tr>
         <td style="width: 200px">
            <jsp:include page="/commonmodule/left.jsp"></jsp:include>
         <td style="width:500px">
               kglim 소개 페이지 내용
         </td>
      </tr>
<tr>
         <td colspan="2">
            <jsp:include page="/commonmodule/botton.jsp"></jsp:include>
         </td>
      </tr>
   </table>
</body>
</html>