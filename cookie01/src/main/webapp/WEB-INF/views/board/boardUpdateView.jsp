<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판 수정</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="<c:url value='/css/boardList.css'/>"> 
	 
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id = "boardBox">
				<header>
					<h1>게시판 수정</h1>
				</header>
				<div id="borDetailBox">
				
					<form method="post" action="/boardUpdate">
						<input type="text" id="borTitle" name="borTitle" value="${vo.borTitle}" />
						<div id="detailTop">
							<span>no.${vo.borNo }</span>
							<input type="hidden" id="borNo" name="borNo" value="${vo.borNo }" />
							<span>작성자 : ${vo.memName }</span>
							<span>updated : <fmt:formatDate value="${vo.borUpDate }" var="upDate" pattern="YY.MM.dd yy:hh:ss"/></span>
						</div>
						<div id="detailTop2">
							<span>조회 : ${vo.borHit } </span>
							<span></span>
							<span>created : <fmt:formatDate value="${vo.borCreDate }" var="credate" pattern="YY.MM.dd yy:hh:ss"/></span>
						</div>
						
						<div id="borDetailContent">
							<textarea id="borScript" name="borScript" cols="65" rows="10" required>${vo.borScript }</textarea>
						</div>
						
						<div id="detailBottomButton">
							<div id="detailLeftButton">
						   		<a href="<c:url value='/boardListView/boardDetailView/${vo.borNo}' />">뒤로가기</a>
							</div>
							<input type="submit" id="updateSubmitButton" value="수정" />
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