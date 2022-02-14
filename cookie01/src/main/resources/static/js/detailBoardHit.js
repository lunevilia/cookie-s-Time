/**
 * 
 */
$(function(){
	var detailBoardNo = $("#detailBoardNo");
	var detailBoardHit = $('#detailBoardHit');
	
	console.log(detailBoardHit);
	// 페이지 load 시 hit 증가
	$.ajax({
		type:"post",
		url : "/BoardHit",
		data : {
			"borNo" : detailBoardNo.text()
		},
		dataType:'text',
		success:function(result){
			console.log("조회수 증가");
			detailBoardHit.text(Number(detailBoardHit.text()) + 1);
		},
		error:function(data, textStatus){
			console.log("조회수 증가 에러 발생");
		}
	});
	

})
