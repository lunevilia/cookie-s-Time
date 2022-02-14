<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link href = "<c:url value='/css/logIn.css'/>" rel = 'stylesheet' />
	<script src="<c:url value='/js/LogIn.js'/>"></script>
	
</head>
	<body>
	
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	    
	    <section>
			<div id = 'loginTop'>  </div>
			
			<div id = "wrap">
				<header>
					<h1>LogIn</h1>
				</header>
				
				<div id = 'typeBox'>
					<form id="LoginCheckForm" name="LoginCheckForm">
						<input type = 'text' id = 'memId' name = 'memId' placeholder = 'Id 입력'>
						<input type = 'password' id = 'memPwd' name = 'memPwd' placeholder = 'Password 입력'>
						<input type = 'submit' value = '로그인'>
						<div><a onClick = 'showSnsLogin()' href = '#'>SNS 로그인하기</a></div>
					</form>
						<a id="log-signUp" href="/signUp">회원가입</a>	
				</div>
			</div>
		</section>
		
		 <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>