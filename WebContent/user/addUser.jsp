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
    <title>회원가입</title>
    <jsp:include page="/head.jsp" />
<style>
.content container{margin-top:20px}
#id { width:780px; float:left; margin-right:30px; margin-left:6px; }
.buttons{float:right;}
</style>    
  </head>
<body>
<jsp:include page="/header.jsp" />
<div class="content container" style="margin-top:100px;">
	<h2 class="title">회원가입</h2>
	<form name="frm1" action="${path1 }/AddUserProCtrl.do" method="post" id=addUser class="frm1" onsubmit="return joinAlert(this)">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div class="form-row">
							<input type="text" id= "id" name="id" placeholder="아이디 입력" class="input is-info" autofocus required/>
							<input type="button" class="button is-info" value="아이디 중복 확인" onclick="idCheck()" >
							<input type="text" id="msg" class="" value=""  >
							<input type="hidden" name="idck" value="no">
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" id= "pw" name="pw" placeholder="비밀번호 입력" class="input is-info" required/></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" id= "pw2" name="pw2" placeholder="비밀번호 입력" class="input is-info" required/></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id= "name" name="name" placeholder="이름 입력" class="input is-info" required/></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" id= "address1" name="address1" placeholder="기본 주소 입력" class="input is-info" required/><br>
					<input type="text" id= "cusName" name="address2" style="margin-top:10px;"placeholder="상세주소 입력" class="input is-info" required/><br>
					<input type="text" id="postcode" name="postcode" style="width:160px;float:left;margin-right:20px;margin-top:10px;" placeholder="우편번호" class="input is-info" required/><br>
					<button id="post_btn" onclick="findAddr()" style="margin-top:-12px;"class="button is-info">우편번호 검색</button>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" id= "tel" name="tel" placeholder="010-0000-0000" class="input is-info" required/></td>
				</tr>
			</tbody>
		</table>
		<div class="buttons">
			<input type="submit" name="submit-btn" class="button is-info" value="회원가입">
			<input type="reset" name="reset-btn" class="button is-danger" value="취소">
			
		</div>
	</form>
	
</div>
<script>
	function idCheck(){
		if($("#id").val()==""{
			alert("아이디를 입력하지 않으셨습니다.");
			$("#id").focus();
			return;
		}
		var params = { id : $("#id").val()}	//전송되어질 데이터를 객체로 묶음
		$.ajax({
			url:"${path1}IdCheckCtrl.do",	//아이디가 전송되어질 곳
			type:"post",	//전송방식
			dataType:"json",	//데이터 반환 방식
			data:params,	//전송방식이 post인 경우 객체로 묶어서 전송
			success:function(result){
				console.log(result.result);
				var idChk = result.result;	//true 또는 false를 받음
				if(idChk==false){	//사용할 수 없는 아이디
					$("#idck").val("no");
					$("#msg").html("<strong style='color:red'>기존 사용중인 아이디입니다.");
					$("#id").focus();
				} else if(idChk==true){	//사용 가능한 아이디
					$("#idck").val("yes");
					$("#msg").html("<strong style='color:blue'>사용가능한 아이디입니다.");
				} else if(idCk==""){
					$("#msg").html("<strong>아이디가 확인되지 않습니다. 다시 시도해주시기바랍니다.");
				}
			}
		});
	}
	
	
	
	
	
	
	function joinAlert(f){
		if(f.pw.value!=f.pw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.pw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
			return false;
		}
	}
	
	
</script>
<script>
function findAddr() {
	new daum.Postcode({
		oncomplete: function(data) {
			console.log(data);
			var roadAddr = data.roadAddress;
			var jibunAddr = data.jibunAddress;
			document.getElementById("postcode").value = data.zonecode;
			if(roadAddr !== '') {
				document.getElementById("address1").value = roadAddr;				
			} else if(jibunAddr !== ''){
				document.getElementById("address1").value = jibunAddr;
			}
			document.getElementById("address2").focus();
		}
	}).open();
}
</script>

<jsp:include page="/footer.jsp"/>
</body>
</html>