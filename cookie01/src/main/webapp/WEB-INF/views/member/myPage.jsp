<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>My Page</title>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
    	$('#deleteCheck').on('click', function(){
    		if(confirm("정말 삭제하시겠습니까??")){
    			return false;
    		} else{
    			location.href = "write_del_ok.jsp?num=1";
                return true;
    		}

    	})
    </script>
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	
		<div class="container">
			<div id="mypageBox">
				<header>
					<h1>My Page</h1>
				</header>
				<image src="<c:url value='/image/myImage.png'/>">
				<p><span id="mypageNick">${vo.memName }</span></p>
				<p>이메일 : ${vo.memEmail }</p>
				<p>쿠키런 코드 : ${vo.cookieId }</p>
				<p>생성일 : <fmt:formatDate value="${vo.memJoinDate }"  pattern="YY.MM.dd HH:mm:ss"/></p>
				
				<c:if test="${sessionScope.sid eq vo.memId }">
					<div id="mypageBtnBox">
						<a href="/myPageView/updateMemberViews/${vo.memId }">수정</a>
						<a id="deleteCheck" href="/deleteMember/${vo.memId }">회원 탈퇴</a>
					</div>
				</c:if>
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>