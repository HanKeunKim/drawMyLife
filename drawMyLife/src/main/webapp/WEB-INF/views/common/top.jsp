<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DrawMyLife</title>
        <script src="${contextPath }/resources/js/jquery-3.1.1.min.js"></script>  
        <script src="${contextPath }/resources/js/main.js?v=2"></script>
        
        
        
        <script>
        
        
        </script>          
		<link rel="stylesheet" type="text/css" id="login-css" href="${contextPath }/resources/css/main.css" />
               	    
    </head>
    <body>
    	<div class="wrap">
    		<div class="body">
    			
    			<div class="header">
    				
    				
    				<c:if test="${sessionScope.smember == null}">
    					<form id="target" action="${contextPath }/member/login" method="post">
	    					<input type="text" name="email" id="email" placeholder="아이디" onkeypress="hitEnterKey('${contextPath}')">
	    					<input type="password" name="pwd" id="pwd" placeholder="패스워드" onkeypress="hitEnterKey('${contextPath}')">
	    					<button type="button" onclick="login('${contextPath}')">로그인</button>
		    				<%-- <button onclick="movePage('${contextPath}/member/login')">로그인</button> --%>
		    				<button type="button" onclick="movePage('${contextPath}/member/join')">회원가입</button>
    					</form>    					 
    				</c:if>
    				<c:if test="${sessionScope.smember != null}">    					
    					${sessionScope.smember.mname }
    					<button onclick="movePage('${contextPath}/member/logout')">로그아웃</button>
    				</c:if>
    
    				<hr>
    				<center>
	    				<a href="${contextPath }/">
	    					<img src="${contextPath }/resources/img/logo.jpg" />
	    				</a>    
    				</center>				
    				<div class="top_navi">
    					<ul>
    						<li <c:if test="${category.categoryId ==1}">class='active'</c:if>>
    							<a href='${contextPath }/board/list?categoryId=1'>하루평가</a>
    						</li>    							
    						
							<li <c:if test="${category.categoryId ==2}">class='active'</c:if>>
								<a href='${contextPath }/board/list?categoryId=2'>잡담게시판</a>
							</li>    	
						</ul>  					
    				</div>
    			</div>    			