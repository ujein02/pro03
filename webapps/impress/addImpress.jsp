<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%
	String sid = (String) session.getAttribute("id");
%>

<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이용후기 등록</title>
    <jsp:include page="/head.jsp" />
    
  </head>
  <body>
  <jsp:include page="../header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">이용후기 등록하기</h1>
      	<form name="frm1" id="frm1" action="${path1 }/AddImpressCtrl.do" method="post" onsubmit="return tourCheck(this)">
			<div class="field">
			  	<label class="label">카테고리</label>
			  	<div class="select">
				  <select name="cate" id="cate" class="select" onchange="changeTourNo()" required>
				  	<option value="">선택</option>
				    <option value="A">관광</option>
				    <option value="B">행사</option>
				    <option value="C">음식</option>
				    <option value="D">추천여행지</option>
				    <option value="E">기타</option>
				  </select>
				  <input type="hidden" id="tourno" name="tourno" value="">
				</div>
			</div>
			<div class="field">
			  <label class="label">별점</label>
			  <div class="control has-icons-left has-icons-right">
			    <label class="checkbox">
				  <input type="checkbox">
				  <input type="checkbox">
				  <input type="checkbox">
				  <input type="checkbox">
				  <input type="checkbox">
				 </label>
			  </div>
			</div>
			<div class="field">
			  <label class="label">작성자</label>
			  <div class="control has-icons-left has-icons-right">
			    <input type="text" name="id" id="id" class="input" value="" required>
			  </div>
			</div>
			<div class="field">
			  <label class="label">내용</label>
			  <div class="control has-icons-left has-icons-right">
			    <textarea class="textarea" name="comment1" id="comment1" cols="80" rows="8" maxlength="1000" placeholder="이용후기를 작성해 주시기 바랍니다." required></textarea>
			  </div>
			</div>
			<div class="buttons">
			  	<button type="submit" class="button is-link">후기 등록</button>
			  	<a href="${path1 }/GetImpressListCtrl.do" class="button is-link is-light">취소</a>
			</div>
		</form>
		<script>
		
		</script>
	</div>
  </section>
  <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>