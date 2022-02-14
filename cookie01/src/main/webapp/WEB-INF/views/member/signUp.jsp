<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Sign UP</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link href = "<c:url value='/css/SignUp.css'/>" rel = 'stylesheet' />
	<script src="<c:url value='/js/SignUp.js'/>"></script>
</head>
	<body>
		<!-- nav --------------------------------------------- -->
	    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	    
    
		<div id = 'backBox'>
			<div id = "wrap">
				<div id = 'typeBox'>

					<h1 style = "text-align: center; margin-bottom: 20px;">Sign Up</h1>
				
					<form id="signupCheckForm" name="signupCheckForm"  method="post" action="/signUpCheck">
						
						<table>
				            <tr><th>ID</th>
				            	<td><input type="text" id="memId" name="memId" placeholder='id 입력'></td>
				            	<td><input type="button" id="memIdCheck" value="ID 중복체크"></td>
			            	</tr>
			            	
				            <tr><th>비밀번호</th><td><input type="password" id="memPwd" name="memPwd" placeholder='password 입력'></td></tr>
				            <tr><th>비밀번호 확인</th><td><input type="password" id="memPwCheck" name="memPwCheck" placeholder='password 확인'></td></tr>  
				            
				            <tr><th>닉네임</th>
				            	<td><input type="text" id="memName" name="memName" placeholder='닉네임 입력'></td>
				            	<td><input type="button" id="memNameCheck" value="닉네임 중복체크"></td>
			            	</tr> 
				              
				            <tr><th>Email</th><td><input type="email" id="memEmail" name="memEmail" placeholder='email 입력'></td></tr>
				            
				            <tr><th>쿠키런<br> 유저입니까?</th><td><input type="radio" id="yes" name="yesno" value="1" >예
				                                     <input type="radio" id="no" name="yesno" value="2" checked>아니요</td>
				                                     </tr>
				             <tr><th colspan = '3'>
				             <br>
				             	<div id = 'userCheckBox'>
				             		<p>쿠키런 ID 코드를 입력해주세요</p>
				             		<input type = 'text' id='cookieId' name='cookieId'><br>
				             		<br>
				             		<input type="button" id="cookieIdCheck" value="Cookie ID 중복체크">
				             	</div>
		           		  	</th></tr>
				            
				             <tr>
				                <td colspan="3" align="center">
				                    <br><input type="submit" value="회원가입">
				                    <input type="reset" value="취소">
				                </td>
				            </tr>             
	         			 </table>
					</form>			
				</div>
			</div> 
		</div>
		
		 <!-- BOTTOM  -->
	   	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
   		 <!-- footer --------------------------------------------- -->
	</body>
</html>