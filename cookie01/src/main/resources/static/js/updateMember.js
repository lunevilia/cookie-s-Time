/**
 * 
 */
 
 $(function(){
	
	var $memId = $('#memId');
	var $memPwd = $('#memPwd');	// 현재 패스워드
	var $newMemPwd = $('#newMemPwd'); // 새 패스워드
	var $newMemPwdCheck = $('#newMemPwdCheck'); // 새 패스워드 확인
	var $memName = $('#memName');
	var $memEmail = $('#memEmail');
	var $cookieId = $('#cookieId');
	$('#updateMemForm').submit(function(){
		event.preventDefault();
		if($memPwd.val() == ""){
			$('#memPwdAlert').text("현재 비밀번호를 입력해주세요");
			$memPwd.focus();
			return false;
		} else{
			
		}
	
		if(!($newMemPwd.val() == "" && $newMemPwdCheck.val() == "")){
			if($newMemPwd.val() != $newMemPwdCheck.val()){
				$('#newMemPwdAlert').text("새 비밀번호를 다시 확인해주세요");
				$newMemPwd.focus();
				return false;
			} else {	// 새 비밀번호 확인까지 일치 할때
				// 현재 비밀번호 확인 후, 정상인 경우 새 비밀번호 업데이트
				$.ajax({
			type:"post",
			url:"/newPwdUpdate",
			data:{"memId" : $memId.val(),
				  "memPwd": $memPwd.val(),
				  "newMemPwd" : $newMemPwd.val(),
				  "memName" : $memName.val(),
				  "memEmail" : $memEmail.val(),
				  "cookieId" : $cookieId.val()},
			dataType:'text',
			success:function(result1){
				if(result1 == "true"){
					alert("수정이 완료되었습니다.");
					location.href="/myPageView/"+$memId.val();
				}else{
				    $('#memPwdAlert').text("현재 비밀번호가 일치하지 않습니다2");
				    console.log("현재 비밀번호가 일치하지 않습니다2");
			 	}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
			}
		}	
		else {
				// 즉 현재 비밀번호만 확인하기
		
			$.ajax({
				type:"post",
				url:"/nowPwdUpdate",
				data:{"memId" : $memId.val(),
					  "memPwd": $memPwd.val(),
					  "memName" : $memName.val(),
					  "memEmail" : $memEmail.val(),
					  "cookieId" : $cookieId.val()},
				dataType:'text',
				success:function(result1){
					if(result1 == "true"){
						alert("수정이 완료되었습니다.");
						location.href="/myPageView/"+$memId.val();
					}else{
					    $('#memPwdAlert').text("현재 비밀번호가 일치하지 않습니다2");
					    console.log("현재 비밀번호가 일치하지 않습니다2");
				 	}
				},
				error:function(data, textStatus){
					alert("전송 실패");
				}
			});	
		}

		
	})	// submit 끝
	$('#updateMemForm').reset(function(){
		location.href="/myPageView/"+$memId.val();
	})
	
})