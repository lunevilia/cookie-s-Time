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
  	 <script src = "<c:url value='/js/updateMember.js'/>"></script>
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
				
				
				<form id="updateMemForm" name="updateMemForm">
						
						<table>
				           <tr><th>아이디</th><td><input type="text" id="memId" name="memId" value="${vo.memId}" readonly /></td></tr>
				            <tr><th>현재 비밀번호</th><td><input type="password" id="memPwd" name="memPwd" value=""></td></tr>
				            <tr><th></th><td id="memPwdAlert"></td></tr>  
				            <tr><th>새 비밀번호</th><td><input type="password" id="newMemPwd" name="newMemPwd" placeholder='password 확인'></td></tr>
				            <tr><th></th><td id="newMemPwdAlert">무조건 바꾸지 않으셔도 됩니다.</td></tr>  
				            <tr><th>새 비밀번호 확인</th><td><input type="password" id="newMemPwdCheck" name="newMemPwdCheck" placeholder='password 확인'></td></tr>
				            
				            <tr><th>닉네임</th>
				            	<td><input type="text" id="memName" name="memName" value="${vo.memName }"></td>
			            	</tr> 
				              
				            <tr><th>Email</th><td><input type="email" id="memEmail" name="memEmail" value="${vo.memEmail }"></td></tr>
				            <tr><th>쿠키런 ID</th><td><input type="text" id="cookieId" name="cookieId" value="${vo.cookieId }"></td></tr>
				          				                             
				             <tr><th colspan = '3'>
				             <br>
		           		  	</th>
				             <tr>
				                <td colspan="3" align="center">
				                    <br><input type="submit" value="수정">
				                    <input type="reset" value="취소">
				                </td>
				            </tr>             
	         			 </table>
					</form>		
		   </div>
	   </div>
	   
	    <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>

	