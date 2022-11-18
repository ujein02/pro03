<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이용후기 상세보기</title>
    <jsp:include page="/head.jsp" />
<style>
.table{border:3px solid #eee;}
</style>    
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">이용후기 상세보기</h1>
		<table class="table">
		   <tbody>
		    <tr>
		      <th>번호</th>
		      <td>${dto.no }</td>
		    </tr>
		    <tr>
		      <th>카테고리</th>
		      <td>${dto.cate }</td>
		    </tr>
		    <tr>
		      <th>별점</th>
		      <td>${dto.star }</td>
		    </tr>
		    <tr>
		      <th>작성자</th>
		      <td><p>${dto.id }</p></td>
		    </tr>
		    <tr>
		      <th>내용</th>
		      <td><p>${dto.content }</p></td>
		    </tr>
		    <tr> 
		      <th>작성일</th>
		      <td>
		      	<fmt:parseDate value="${dto.regDate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		    </tr>
		  </tbody>
		</table>
		<div id="con">
      		<table class="table">
      			<c:if test="${not empty list }">
      			<tr>
				<c:forEach items="${list }" var="pic" varStatus="status">
				<td>
					<img src="upload/${dto.imgSrc }" class="lazy" onerror="this.style.display='none'" alt="배너" />
					<!-- onerror="this.style.display='none'"  -->
	      		</td>
				</c:forEach>	
		    	</tr>
		    	</c:if>
				<c:if test="${empty list }">
			    <tr>
			    	<td>해당 이미지가 없습니다.</td>
			    </tr>
			    </c:if>
		  </tbody>
		</table>
      	</div>
		<div class="buttons">
		  <a href="${path1 }/GetImpressListCtrl.do" class="button is-info">목록</a>
		  <a href="${path1 }/DelImpressCtrl.do?no=${dto.no }" class="button is-danger">글 삭제</a>
		  <a href="${path1 }/ModifyImpressCtrl.do?no=${dto.no }" class="button is-info">글 수정</a>
		</div>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>