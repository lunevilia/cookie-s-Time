<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>컨텐츠 리스트</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	 <link rel="stylesheet" href="<c:url value='/css/contentList.css'/>">
	 
	
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id = "contentBox">
				<header>
					<h1 style="color:black;">ContentList</h1>
				</header>
				
				<c:forEach items="${cntList }" var="cnt">
					<div class="contentForBox" 
						style="background: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.5) ),url('<c:url value='/image/content/${cnt.cntImage}'/>'); background-repeat: no-repeat; background-size: cover;" >
						   
						   	<h3 class="cNo"><a href="<c:url value='/product/detailViewProduct/${cnt.cntNo}'/>">${cnt.cntNo }</a></h3>
				   			<h3 class="cName">${cnt.cntName }</h3>
				   			<div class="DateStyle">남은시간<p class="cDate">
				   						<fmt:formatDate value="${cnt.cntEnd }"  pattern="YYYY-MM-dd HH:mm:ss"/>
				   			</p>
		   					</div>
				   			<p class="cScript">${cnt.cntScript }</p>
				   			<span class="cCategory">${cnt.cntCategory }</span>
				   			
		   			 </div>
			   </c:forEach>
			  
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>