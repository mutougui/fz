
$(function(){
	
	//老虎飞出
//		
//		var timer=window.setInterval(function(){
//		var laohu = $("<img src='img/laohu.png' id='laohu'/>");
//			var txt=$("<img src='img/txt.png' id='txt'/>")
//			$(".aiya").append(laohu);
//			$(".aiya").append(txt);
//			laohu.animate({left:660,top:120},1000,function(){
//				laohu.animate({left:560},500);
//			});
//			txt.animate({left:320,top:420},1000,function(){
//				txt.animate({top:320},500);
//			});
//			if(laohu.length>=1&&txt.length>=1){
//				window.clearInterval(timer);
//			}
//		},2000)
//	
//		$("#X").click(function(){
//			$(".aiya").hide();
//		})

	

	
	//从登录界面登录过来
	if(location.search){
		var id=location.search;
		id=id.split("?")[1];
		$(".denglu").html(id+"已登录");
		$(".denglu").attr("href","购物车.html");
		$(".denglu1").html(" " + " 欢迎");
		$(".denglu2").html(" " + " 退出").css("color","red");
		$(".denglu2").attr("href","飞虎乐购.html");
	}else{
		//安全登录
		$(".top a:first-child").click(function(){
			location.href = "denglu.html";
		})
		//免费注册
		$(".top a:last-child").click(function(){
			location.href = "zhuce.html";
		})
	}

	
	//倒计时
	$(function(){
	
		window.setInterval(function(){
//			show_time('2016-10-01');
			show_time('2016-09-25');
		},1000);
		function show_time(x){ 
		    var time_start = new Date().getTime(); //设定当前时间
		    var time_end =  new Date(x).getTime(); //设定目标时间
		    // 计算时间差 
		    var time_distance = time_end - time_start; 
		    // 天
		    var int_day = Math.floor(time_distance/86400000); 
		    time_distance -= int_day * 86400000; 
		    // 时
		    var int_hour = Math.floor(time_distance/3600000);
		    time_distance -= int_hour * 3600000; 
		    // 分
		    var int_minute = Math.floor(time_distance/60000);
		    time_distance -= int_minute * 60000; 
		    // 秒 
		    var int_second = Math.floor(time_distance/1000); 
		    // 时分秒为单数时、前面加零 
		    if(int_day < 10){ 
		        int_day = "0" + int_day; 
		    } 
		    if(int_hour < 10){ 
		        int_hour = "0" + int_hour; 
		    } 
		    if(int_minute < 10){ 
		        int_minute = "0" + int_minute; 
		    } 
		    if(int_second < 10){
		        int_second = "0" + int_second; 
		    } 
		    // 显示时间 
		    $(".time_d").html(int_day); 
		    $(".time_h").html(int_hour); 
		    $(".time_m").html(int_minute); 
		    $(".time_s").html(int_second); 
		}
	})




	
	//移动鼠标改变左list样式
	$("._nav .nav_left ul li").mouseover(function(){
		$(this).css("background","#d92121").siblings().css("background","#070707")
	})
	$("._nav .nav_left ul li").mouseout(function(){		
		$(this).css("background","#070707");
	})

	// 轮播图



		
		
		//鼠标移入移出事件		
		$("._nav #scrollpicture").hover(function(){ 
					//移入 mouseenter
					$("._nav #scrollpicture a").css("display","block");
				}, 
				function(){
					//移出, mouseleave					 
					$("._nav #scrollpicture a").css("display","none");
				})
		
		$("._nav #scrollpicture .left").click(function(e){
			if(timer){
				clearInterval(timer);
			}
				i--;	
				e.preventDefault();
				move();
				timer=window.setInterval(function(){
					i++;
					move();
				},3000);
			})
		
		
		
		$("._nav #scrollpicture .right").click(function(e){
			if(timer){
				clearInterval(timer);
			}
				i++;
				e.preventDefault();
				move();
				timer=window.setInterval(function(){
					i++;
					move();
				},3000);
			})
		
		
		
			_li2.click(function(){
				if(timer){
					clearInterval(timer);
				}
				var index=$(this).index();
				i=index;
				move();
				timer=window.setInterval(function(){
					i++;
					move();
				},3000);
			})
			
			
	})
	
	//boxpicture  
	$.getJSON("boxpicture.json",function(data){
		for(var i=0; i<data.length;i++){
			var obj=data[i];
			var img=$("<img src=" + obj.img + " />");
			var a=$("<a href='#'>" + obj.a+ "</a>");
			var span=$("<span class='box2a1'>" + obj.span+ "</span>");
			var span1=$("<span class='box2a2'>" + obj.span1+ "</span>");
			$(".box1").eq(i).append(img);
			$(".box2 p").eq(i).append(a);
			$(".box2 .box2a").eq(i).append(span);
			$(".box2 .box2a").eq(i).append(span1);
		}				
	})
	
	//左图片      
	$.getJSON("leftpicture.json",function(data){
		for(var i=0;i<data.length;i++){
			var obj=data[i];
			var img = $("<img src=" + obj.img + " />");
			$(".buy2_left").eq(i).append(img);			
			
			(function(index){
				$(".buy2_left").eq(index).find('div').mouseenter(function(){
					var color=data[index].color;
					$(this).css({
						"background":color,
						"color":"white",
						"text-decoration":"line-through"
					});
					
				})
				$(".buy2_left").eq(index).find("div").mouseleave(function(){
					$(this).css({
						"background":"white",
						"color":"#ff3300",
						"text-decoration":"none"
					});
				})
			})(i)
			
		}
		
	})

	
	//内容图片
	$.getJSON("picture.json",function(data){
		for (var i=0; i<data.length; i++) {
			var obj = data[i];						
			var img = $("<img class='_img' src=" + obj.img + " />");
			var p=$("<p>" + obj.p+ "</p>");
			var span=$("<span>" + obj.span+ "</span>")
			$(".pic1").eq(i).append(img);
			$(".pic2").eq(i).append(p);
			$(".pic3").eq(i).prepend(span);
		}
		

		$(".pic1").find("img").click(function(){
			var index = $(this).index("._img");
			console.log(index);
			var obj = data[index];
			location.href = "详情.html?" + obj.id; 
			
		})
	})
	
	
	//爱心小图片img:last-child
	$(".buy2_foot").find("li").mouseenter(function(){
		$(this).find("span").find("img").css("display","block");
	})
	$(".buy2_foot").find("li").mouseleave(function(){
		$(this).find("span").find("img").css("display","none");
	})
})
