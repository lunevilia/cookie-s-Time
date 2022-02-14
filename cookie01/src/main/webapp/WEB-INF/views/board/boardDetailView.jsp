<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>자유 게시판</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="<c:url value='/css/boardList.css'/>"> 
	 <script src = "<c:url value='/js/detailBoardHit.js'/>"></script>
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id = "boardBox">
				<header>
					<h1>상세 게시판</h1>
				</header>
				<div id="borDetailBox">
				
					<h3>${vo.borTitle}</h3>
					<div id="detailTop">
						<span>no.<span id="detailBoardNo">${vo.borNo }</span></span>
						<span>작성자 : ${vo.memName }</span>
						<span>updated : <fmt:formatDate value="${vo.borUpDate }"  pattern="YY.MM.dd yy:hh:ss"/></span>
					</div>
					<div id="detailTop2">
						<span>조회 : <span id="detailBoardHit">${vo.borHit }</span> </span>
						<span></span>
						<span>created : <fmt:formatDate value="${vo.borCreDate }"  pattern="YY.MM.dd yy:hh:ss"/></span>
					</div>
					
					<div id="borDetailContent">
						${vo.borScript }
					</div>
					
					<div id="detailBottomButton">
						<div id="detailLeftButton">
					   		<a href="<c:url value='/freeBoard' />">뒤로가기</a>
						</div>
						<c:if test="${sessionScope.sName eq vo.memName}"><!--  -->
					   		<a class="detailRightButton" href="/boardUpdateView/${vo.borNo }">수정</a>
					   		<a class="detailRightButton" href="/detailDelete/${vo.borNo }">삭제</a>

					   </c:if> 
				   </div>
			
				</div>
			  
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>