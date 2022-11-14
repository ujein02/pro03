<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<c:set var="path2" value="${pageContext.request.contextPath }" />  
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" id="logo" href="<%=request.getContextPath() %>/"><img alt="logo" src="${path1}/WebContent/data/logo.png">

    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">

      <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
        NOTICE
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          More
        </a>

        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" href="${path1 }/user/join.jsp">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" href="${path1 }/user/login.jsp">
            Log in
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>