
window.onload = function() {
	
	//图片轮播
	(function() {
		var oImg = document.getElementById('auto_img');
		var oBox = document.getElementById('pic_box');
		var oBtnl = document.getElementById('btn_pic_l');
		var oBtnr = document.getElementById('btn_pic_r');

		var imgArr = ['a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg'];
		var num = 0;
		var timer;

		//自动播放
		function autoPlay() {
			timer = setInterval(function() { //设置定时器
				num++;
				if(num > imgArr.length - 1) {
					num = 0;
				}
				oImg.src = '/img/' + imgArr[num];
			}, 2000);
		}
		autoPlay();

		oBox.onmouseover = function() {
			clearTimeout(timer);
			oBtnl.style.display = "block";
			oBtnr.style.display = "block";
		};
		oBox.onmouseout = function() {
			autoPlay();
			oBtnl.style.display = "none";
			oBtnr.style.display = "none";
		};

		//向前一张
		oBtnr.onclick = function() {
			num++;
			if(num > imgArr.length - 1) {
				num = 0;
			}
			oImg.src = '/img/' + imgArr[num];
		};
		//向后一张
		oBtnl.onclick = function() {
			num--;
			if(num < 0) {
				num = imgArr.length - 1;
			}
			oImg.src = '/img/' + imgArr[num];
		};
	})();

}