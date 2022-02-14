/**
 * 
 */
 $(function(){
	let slideImg1 = document.getElementById('contentMiniBox2')
	let slideImg2 = document.getElementById("contentMiniBox3");
	let slideImg3 = document.getElementById('contentMiniBox4');
 	window.addEventListener("scroll", function(){
	let value=window.scrollY;
	console.log("scrollY", value);
	
		if(value < 120) {
			console.log("scrollY", value);
			slideImg1.style.animation = "disappear 1s ease-out forwards"
			slideImg2.style.animation = "disappears 1s ease-out forwards";
			slideImg3.style.animation = "disappear2 1s ease-out forwards";
		} else {
			console.log("scrollY", value);
			slideImg1.style.animation = "sliding 1s ease-out";
			slideImg2.style.animation = "slide 1s ease-out";
			slideImg3.style.animation = "sliding2 1s ease-out";
		}
	})
})
