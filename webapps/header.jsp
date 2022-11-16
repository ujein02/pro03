<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<c:set var="path2" value="${pageContext.request.contextPath }" /> 
<style>
#logo { display:block; width:150px; height:auto; padding-top:20px; }

</style> 
<nav class="navbar is-light" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" id="logo" href="<%=request.getContextPath() %>/"><img alt="logo" src="${path1 }/data/logo.png">

    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="gnb">
    	<div class="navbar-item has-dropdown is-hoverable">
        	<a class="navbar-link" style="width:150px;" >
				관광
	      	</a>
	      <div class="navbar-dropdown ">
	          <a class="navbar-item">
	            1
	          </a>
	          <a class="navbar-item">
	            2
	          </a>
	       </div>
      
      <a class="navbar-item" style="width:150px;" href="<%=request.getContextPath() %>/">
      	문화
      </a>
      
      <a class="navbar-item" style="width:150px;" href="<%=request.getContextPath() %>/">
      	숙박
      </a>
      
      <a class="navbar-item" style="width:150px;" href="<%=request.getContextPath() %>/">
      	음식
      </a>
      
      <a class="navbar-item" style="width:150px;" href="<%=request.getContextPath() %>/">
      	쇼핑
      </a>
      
      <a class="navbar-item" style="width:150px;" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
        NOTICE
      </a>

      </div>
    </div>
   </div>

    <div class="tnb">
	  <div class="navbar-item">
	  	<c:if test="${empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/user/agree.jsp" class="button is-info">
	     <strong>Sign up</strong>
	   </a>
	   <a href="${path2 }/user/login.jsp" class="button is-info">
	     Log in
	   </a>
	 </div>
	</c:if>
	<c:if test="${not empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/UserInfoCtrl.do" class="button is-info">
	     <strong>Member Info</strong>
	   </a>
	   <a href="${path2 }/UserLogoutCtrl.do" class="button is-info">
	     LogOut
	   </a>
		<c:if test='${sid.equals("admin")}'>
		   <a href="${path2 }/AdminCtrl.do" class="button is-warning">
		     <strong>Admin</strong>
		   </a>
		 </c:if>
	 </div>
	</c:if>
  </div>
</div>
  </div>
</nav>