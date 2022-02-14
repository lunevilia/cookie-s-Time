/**
 * 
 */


$(document).ready(function(){
	
	$('#memId').focus();
	
	$('input[name=yesno]').change(function(){
		
		if($('input[name=yesno]:checked').val() ==1){
			$('#userCheckBox').css('display', 'block');
		} else {
			$('#userCheckBox').css('display', 'none');
		}
	});
	
	// 아이디 중복 체크
	$('#memIdCheck').on('click', function(){		
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"memIdCheck",
			data:{"memId": $('#memId').val()},  
			dataType:'text',
			success:function(result){
				if(result == "no_use"){
					alert("사용할 수 없는 ID입니다.");
				}else{
				    alert("사용 가능한 ID입니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});

	// 회원가입 버튼 누른 후
	$('#signupCheckForm').submit(function(){
		var $memId = $('#memId');
		var $memPwd = $('#memPwd');
		var $memPwCheck = $("#memPwCheck");
		
		
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
		
		if($memPwCheck.val() != $pwd.val()){
			alert("비밀번호 확인이 다릅니다");
			$memPwCheck.focus();
			return false;
		}
		
		
	})
})