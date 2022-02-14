/**
 * 
 */

 /*** 
 		Content DB의 시간 타이머 JS 파일
  */
var cnt = 0;



$(function(){
	var cDate = $('.cDate');
	var ArrLastDate = new Array(cDate.length);
	for(var i = 0; i < cDate.length; i++){
		ArrLastDate[i] = cDate[i].innerHTML;
		console.log(ArrLastDate[i]);
	}
	
	
	var timer = setInterval(function(){
		var dday;
		$('.cDate').each(function(index){
			// 목표 시간 설정
			
			dday = new Date(ArrLastDate[index]+" GMT+0900").getTime();
			var today = new Date().getTime();
			var gap = dday-today;
			var day = Math.floor(gap/(1000*60*60*24));
			var hour = Math.floor((gap % (1000*60*60*24))/(1000*60*60)) -1;
			var min = Math.floor((gap % (1000 * 60 * 60)) / (1000 * 60));
			var sec = Math.floor((gap % (1000 * 60)) / 1000);
			$(this).text(day + '일 ' + hour + "시간 " + min + "분 " + sec +"초");
		});
		
	}, 500);
	timer();
})
