<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<c:set var="path2" value="${pageContext.request.contextPath }" /> 
<style>
#logo { display:block; width:200px; height:auto; padding-top:20px; }

</style> 
<div id="nav-group">
	<div class="container"> 
		<nav class="navbar is-light" role="navigation" aria-label="main navigation">
			<div class="navbar-brand">
				    <a class="navbar-item" id="logo" href="${path2 }/">
				    </a>
				
				    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
				      <span aria-hidden="true"></span>
				      <span aria-hidden="true"></span>
				      <span aria-hidden="true"></span>
				    </a>
				  </div>
			<div id="navbarBasicExample" class="navbar-menu">	
			  	<div class="navbar-start" id="gnb">
					    	<div class="navbar-item has-dropdown is-hoverable">
						    	<a href="${path2 }/GetTourCateListCtrl.do?cate=A" class="navbar-link" >
							      	관광
							    </a>
							    <div class="navbar-dropdown cate" id="cate01">
							    
							    </div>
							</div>
							<div class="navbar-item has-dropdown is-hoverable">
						    	<a href="${path2 }/GetTourCateListCtrl.do?cate=B" class="navbar-link cate">
							      	행사
							    </a> 
					   		    <div class="navbar-dropdown cate" id="cate02">
							    
							    </div>
							</div>
							<div class="navbar-item has-dropdown is-hoverable">
						    	<a href="${path2 }/GetTourCateListCtrl.do?cate=C" class="navbar-link cate">
							      	음식
							    </a>
					   		    <div class="navbar-dropdown cate" id="cate03">
							    
							    </div>
							</div>
							<div class="navbar-item has-dropdown is-hoverable">
						    	<a href="${path2 }/GetTourCateListCtrl.do?cate=D" class="navbar-link cate">
							      	추천여행지
							    </a>
					    		<div class="navbar-dropdown cate" id="cate04">
							    
							    </div>
							</div>
							<div class="navbar-item has-dropdown is-hoverable">
						    	<a href="${path2 }/GetTourCateListCtrl.do?cate=E" class="navbar-link cate">
							      	기타
							    </a>
					    		<div class="navbar-dropdown cate" id="cate05">
							    
							    </div>
							</div>	
							<div class="navbar-item has-dropdown is-hoverable single">
						    	<a class="navbar-link">
							      	공지사항
							    </a>
								<div class="navbar-dropdown single">
								     <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
								       	공지사항
								     </a>
							    </div> 
							</div>
							<div class="navbar-item has-dropdown is-hoverable single">
							    <a class="navbar-link">
							      	ABOUT 포항
							    </a>
							
							    <div class="navbar-dropdown single">
							      <a class="navbar-item">
							        1
							      </a>
							      <hr class="navbar-divider">
							      <a class="navbar-item">
							        2
							      </a>
							    </div>
						  </div>
						</div>
						
						<div class="navbar-end" id="tnb">
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
							   <a href="${path2 }/AdminCtrl.do" class="button is-success">
							     <strong>Admin</strong>
							   </a>
							 </c:if>
						 </div>
						</c:if>
					  </div>
					</div>
			</div>  
		</nav>
		<script>
			$(document).ready(function(){
				$.ajax({
					url:"${path2 }/MemuLoadCtrl.do",
					type:"POST",
					enctype:"UTF-8",
					datatype:"json",
					processData:false,
					contentType:false, 
					cache:false,
					success:function(data){
						$(".navbar-dropdown.cate").empty();
						var trans = $.parseJSON(data);
						$.each(trans, function(key, value){
							if(key=="data"){
								for(var i=0;i<value.length;i++){
									if(value[i].cate=="A"){
										$("#cate01").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="B"){
										$("#cate02").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="C"){
										$("#cate03").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="D"){
										$("#cate04").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="E"){
										$("#cate05").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="F"){
										$("#cate06").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									} else if(value[i].cate=="G"){
										$("#cate07").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
									}
								}
							}
						});
						
					}
				});
			});
			</script>
	</div>
</div>