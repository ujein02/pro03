<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%
		String id = request.getParameter("id");
		if(id==null || id=="") id="";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
<div class="content container">
	<h2 class="title">아이디 중복 확인</h2>
	<form name="frm1" action="${path1 }/IdCheckCtrl.do" method="post" id="" class="frm1" onsubmit="return invalidCheck(this)">
		<label for="id">아이디</label>
		<input type="text" id= "id" name="id" placeholder="4글자 이상 문자 또는 숫자 입력" class="form-control" autofocus required/>
		<input type="submit" class="form-control" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.lengh<4){
			alert("아이디의 글자수는 4글자 이상이어야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>