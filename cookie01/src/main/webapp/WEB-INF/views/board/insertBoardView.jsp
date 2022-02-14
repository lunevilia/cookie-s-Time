<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판 글쓰기</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="<c:url value='/css/boardList.css'/>"> 
	 
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id = "boardBox">
				<header>
					<h1>게시판 글쓰기</h1>
				</header>
				<div id="borDetailBox">
				
					<form method="post" action="/insertBoard">
						<input type="text" id="borTitle" name="borTitle" value="" />
						<div id="detailTop">
							<input type="hidden" id="memId" name="memId" value="${sessionScope.sid }" />
							<span>작성자 : ${sessionScope.sName }</span>
						</div>
						
						<div id="borDetailContent">
							<textarea id="borScript" name="borScript" cols="65" rows="10" required></textarea>
						</div>
						
						<div id="detailBottomButton">
							<div id="detailLeftButton">
						   		<a href="<c:url value='/boardListView' />">뒤로가기</a>
							</div>
							<input type="submit" id="updateSubmitButton" value="글쓰기" />
					   </div>
				   </form>
			
				</div>
			  
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>