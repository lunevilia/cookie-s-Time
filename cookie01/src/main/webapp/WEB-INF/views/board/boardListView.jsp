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
	 
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id = "borderList">
				<header>
					<h1>자유게시판</h1>
				</header>
				<c:if test="${not empty sessionScope.sid }">
					<div id="writeButton">
						<a href="/insertBoardView">글쓰기</a>
					</div>
				</c:if>
				<table width="900">
					<tr><th width="50">No</th><th>작성자</th>
						<th>제목</th><th width="100">수정일</th>
						<th  width="100">작성일</th><th width="80">조회수</th></tr>
				
				   <c:forEach items="${borList }" var="bor">
				   	<tr><td>${bor.borNo }</td>
				   			<td>${bor.memName }</td>
				   			<td><a href="<c:url value='/boardListView/boardDetailView/${bor.borNo}'/>">${bor.borTitle}</a></td>
				   			<td><fmt:formatDate value="${bor.borUpDate }"  pattern="YY.MM.dd yy:hh:ss"/></td>
				   			<td><fmt:formatDate value="${bor.borCreDate }"  pattern="YY.MM.dd yy:hh:ss"/></td>
				   			<td>${bor.borHit }</td>
		
				   	</tr>
				   </c:forEach>
				   
				</table><br>
			
			  
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>