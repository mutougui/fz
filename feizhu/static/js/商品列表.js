$(function(){
	//左上列表
	$("#goods").hide();
	$("#goodsul").hide();
	$("#goodsul1").hide();
	$(".header_bott_left").mouseenter(function(){
		$("#goods").show();
		$("#goodsul").show();
			
	})
	$("#goodsul li").mouseenter(function(){
	//		console.log(this);
			$("#goodsul1").show();//"border-right","1px solid #fff"
			$(this).css({
				"border-right":"1px solid #fff",
				"background":"#fff",
				"border-bottom":"1px solid #c7012c",
				"border-top":"1px solid #c7012c"
			}).find("a").css({
				"background":"#fff",
				"border-bottom":"none"
			}).parent("li").siblings().css({
				"border-bottom":"none",
				"border-top":"none",
				"background":"#ffefe0",
				"border-right":"1px solid #c7012c"
				
			}).find("a").css({
				"background":"#ffefe0"
			})
			$("#g4").css("border-bottom","1px solid #c7012c");
		})
	
	
	$("#goods").mouseleave(function(){
		$("#goodsul li").css({
			"background":"#ffefe0",
			"border-top":"none",
			"border-bottom":"none",
			"border-right":"1px solid #c7012c"
		}).find("a").css({
			"background":"#ffefe0",
			"border-bottom": "1px solid #f8d4bc"
		})
		$("#g4").css("border-bottom","1px solid #c7012c");
		$("#goods").hide();
		$("#goodsul").hide();
		$("#goodsul1").hide();
	})
})
