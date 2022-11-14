<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <jsp:include page="/head.jsp" />
<style>
.frm1{  border:3px solid #eee;}
.buttons {margin-top:10px; float:right;}
</style>    
  </head>
<body>
<jsp:include page="/header.jsp" />
<div class="content container" style="margin-top:100px;">
	<h2 class="title">로그인</h2>
	<form name="frm1" action="UserLoginCtrl.do" method="post" id="" class="frm1">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" id= "id" name="cusId" placeholder="아이디 입력" class="input is-info" autofocus required/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" id= "cusPw" name="cusPw" placeholder="비밀번호 입력" class="input is-info" required/></td>
				</tr>
			</tbody>
		</table>
		<div class="buttons">
			<input type="submit" name="submit-btn" class="button is-success" value="로그인">
			<input type="reset" name="reset-btn" class="button is-success" value="취소">
		</div>
	</form>
	
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>