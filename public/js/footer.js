/**/
$(function(){
	$.ajax({
		url:"http://127.0.0.1:5500/public/footer.html",
		type:"get"
	}).then(res=>{
		$("#footer").html(res)

/**/
$(".bomb").hide();
$(".download").mouseover(function(){
	$(".bomb").show();
});
$(".bomb").mouseover(function(){
	$(".bomb").show();
})
.mouseout(function(){
  $(".bomb").hide();
});
$(".download").mouseout(function(){
	$(".bomb").hide();
});

$(".weixin").hide();
$(".wechat").mouseover(function(){
	$(".weixin").show();
});
$(".weixin").mouseover(function(){
	$(".weixin").show();
})
.mouseout(function(){
  $(".weixin").hide();
});
$(".wechat").mouseout(function(){
	$(".weixin").hide();
});
})
})