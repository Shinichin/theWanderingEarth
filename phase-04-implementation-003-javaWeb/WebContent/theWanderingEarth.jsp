<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

</body>

<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');//头部文字淡出
		$('#intr')[0].pause();//开头音乐停止
		$('#poem')[0].play();//诗词音乐开始
		$('#poem-txt').fadeIn('slow');
		$('#poem-txt').show('slow');
		$('#poem-txt').animate({
			width:'600px',
			height:'400px'
			},
			4000,
			'swing');
		$(clickedObj).animate({
			width : '1000px',
			opacity : '0.2',
			left : '1800px',
			top : '1000px'
		}, 18000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	
		
	}
	//视频结束后
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			right : '400px',
			top : '500px',
			left : '400px',
			bottom:'300px'
		}, 12000);
		
		$('#waiting')[0].play();
	    $('#saying').fadeIn('slow');
	    $("#saying").animate({
	    	fontSize: '+=15px',
	    	opacity : '0.1',
	    	bottm:'200px',
	    	right : '400px',
	    	
		},12000);        
		
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/wander.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
	<audio id="waiting" src="/static/audio/opening.mp3" preload="auto"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: white; position:absolute; right :10px;top:50px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: grey">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<img src="/static/imgs/earth.png"//地球
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false"
        title="点击后，开始流浪 ！"/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="https://gss3.baidu.com/6LZ0ej3k1Qd3ote6lo7D0j9wehsv/tieba-smallvideo-transcode/61990981_fd6360c7b3d2674e0b0937c34a4c1b1b_0.mp4" onended="onVideoEnd();" />
	</div>
	<div id="saying"
		style="display: none; font-size: 30px;font-weight:400; color: blue; position:absolute; right :430px;top:300px" >
		谨以这个作品向中国科幻世界<br/> &nbsp&nbsp&nbsp&nbsp&nbsp致敬！！
	</div>
</body>
<script type="text/javascript">
        /* 鼠标点击特效 - 点击出现文字 */
        var a_idx = 0;jQuery(document).ready(function($) 
        		{$("body").click(function(e) 
        				{var a = new Array("流浪", "地球", "老刘", "三体", "星空", "罗辑", "毁灭" ,"户口", "微纪元","3","2","1","抬头看");
        				var $i = $("<span/>").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,y = e.pageY;
        $i.css({"z-index": 100000000,"top": y - 20,"left": x,"position": "absolute","font-weight": "bold","color": "white"});
        $("body").append($i);$i.animate({"top": y - 180,"opacity": 0},1500,function() {$i.remove();});});});
</script>
</html>