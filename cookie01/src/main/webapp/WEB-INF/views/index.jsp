<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>쿠키들의 시간</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	 <link rel="stylesheet" href="<c:url value='/css/indexSlide.css'/>">
	 <script src = "<c:url value='/js/indexSliding.js'/>"></script>
</head>
<body>
    
    
    <!-- nav --------------------------------------------- -->
    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
    
	<section>
		<article id="slideShow"> <!-- 슬라이드 쇼  -->
			<!-- 이전/다음 버튼 -->
			<div id="prevNextButtonBox">
				<img id="prevButton" src="image/leftRow.png">
				<img id="nextButton" src="image/rightRow.png">
			</div>				
			<div id="slideShowBox">
				<div id="slidePanel">
					<img src="image/slideBackground0.jpg" class="slideImage">
					<img src="image/slideBackground8.jpg" class="slideImage">
					<img src="image/slideBackground4.jpg" class="slideImage">
					<img src="image/slideBackground6.jpg" class="slideImage">
					<img src="image/slideBackground3-2.jpg" class="slideImage">
				</div>			
			</div> <!-- slideShowBox 끝 -->
			
			<div id = "controlPanel">
				<img src="image/controlButton1.png" class="controlButton">
				<img src="image/controlButton1.png" class="controlButton">
				<img src="image/controlButton1.png" class="controlButton">
				<img src="image/controlButton1.png" class="controlButton">
				<img src="image/controlButton1.png" class="controlButton">
			</div>
	   </div>
		</article>
		
		<%
			int i = 0;
		%>
		
			   
	</section>
	<div class="container">
		<div id="contentMiniArea">
			<h2>Timer</h2>
			<c:forEach items="${cntList }" var="cnt">
			
				<c:if test="${cnt.cntCategory eq '떼탈출'}">
					
					<div class="contentMiniBox">
						<div>
							<img src="<c:url value='/image/content/${cnt.cntImage}'/>"/>
						</div>
						<div>
							<p><span class="indexcntCategory">${cnt.cntCategory }</span></p>
							<h3 class="indexcntName">${cnt.cntName }</h3>
							<p>남은 시간</p>
							<p class="cDate"><fmt:formatDate value="${cnt.cntEnd }"  pattern="YYYY-MM-dd HH:mm:ss"/></p>
						</div>
					</div>
				</c:if>
				
			</c:forEach>
	   </div>
	   
	   <div class="contentMiniArea2">
	   		<h2 style="text-align:center;"><span>이번주 추천 쿠키<span></span></h2>
	   		<div id="contentMiniBox2">
				<img src="<c:url value='/image/timeCookie2.png'/>"/>
			</div>
			<div id="contentMiniBox3">
				<p>이름 : 시간지기쿠기</p>
				<p>짝궁펫 : 무한바퀴 / 꽃니바퀴<p>
				<p>능력 : 균열 생성<p>
				<p>현재 최고득점 쿠키<p>
			</div>
			<div id="contentMiniBox4">
				<img src="<c:url value='/image/timeCookie.png'/>"/>
			</div>
	   </div>
	</div>
	
    <!-- Main Content --------------------------------------------- -->
  
    
    	
    	
    
    
    
    <!-- //section -->
   
   
   <!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
    <!-- footer --------------------------------------------- -->
    
</body>
</html>
	</body>
</html>