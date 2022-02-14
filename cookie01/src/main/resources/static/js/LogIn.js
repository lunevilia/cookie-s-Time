/**
 * 
 */


function showSnsLogin(){
	window.open("/showSnsLogin", "showSnsLogin", "width=750, height=400, left=200,  top=50, status = yes, resizable = yes");				
}

$(document).ready(function(){
	$('#LoginCheckForm').submit(function(){
		event.preventDefault();
			
		
		
		var $memId = $('#memId');
		var $memPwd = $('#memPwd');
		
		if($memId.val() == ""){
			alert("ID를 입력해주세요");
			$memId.focus();
			return false;
		}
		
		if($memPwd.val() == ""){
			alert("password를 입력해주세요");
			$memPwd.focus();
			return false;
		}
		
	
		
		$.ajax({
			type:"post",
			url:"logInCheck",
			data:{"memId": $memId.val(),
				  "memPwd": $memPwd.val()},  /* 컨트롤러에서 받을 때 : id, pw로 받음*/
			dataType:'text',
			success:function(result){
				if(result == "success"){
					alert("로그인 성공!\nindex 페이지로 이동합니다.");
					location.href="/";
				}else{
				    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	})
})