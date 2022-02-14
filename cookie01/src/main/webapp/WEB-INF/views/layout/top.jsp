<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
   <link rel="stylesheet" href="<c:url value='/css/text.css'/>">
   <link rel="stylesheet" href="<c:url value='/css/slideShow.css'/>">
	<link rel="stylesheet" href="<c:url value='/css/myPage.css'/>">
   <script src = "<c:url value='/js/text.js'/>"></script>
    <script src = "<c:url value='/js/slideShow.js'/>"></script>
    <script src = "<c:url value='/js/contentList.js'/>"></script>
    
</head>
	<body>
		<nav>
		<div class="container">
			<ul class="leftMenu">
				<li class="active"><a href="/">Cookies'Time</a></li>	
				<li><a href="/ContentListView">타이머</a></li>
				<li class="dropBox">
					<a href="/freeBoard">게시판</a> 
					<span class="dropmenu"> 
						<span><a href="/freeBoard">자유 게시판</a></span> 
						<span><a href="#">공략 게시판</a></span> 
						<span><a href="#">유투브 게시판</a></span>
					</span>
				</li>
				<li class="dropBox">
					<a href="">쿠키이야기</a> 
					<span class="dropmenu"> 
						<span><a href="#">쿠키들</a></span> 
						<span><a href="#">쿠키런 스토리</a></span> 
					</span>
				</li>
				<li><a href="#">관련 사이트</a></li>
				<li><a href="#">문의하기</a></li>
			</ul>
			<!-- 로그인 하지 않은 경우 보여줄 메뉴 항목  -->
			<c:if test="${empty sessionScope.sid }">
				<ul class="rightMenu">
					<li><a href="/signUp">회원가입</a></li>
					<li><a href="/logIn">로그인</a></li>
				</ul>
			</c:if>
			
			<c:if test="${not empty sessionScope.sid}">
				<ul class="rightMenu">
					<li><a href="/myPageView/${sessionScope.sid }">${sessionScope.sName}님</a></li>
					<li><a href="/logOut">로그아웃</a></li>
				</ul>
			</c:if>
			
			
		</div>
	</nav>
    <!-- //nav -->
	</body>
</html>