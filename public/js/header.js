/**/
$(function(){
    $.ajax({
      url:"http://127.0.0.1:5500/public/header.html",
      type:"get"
    }).then(res=>{
        $("#header").html(res)
/*顶层购物车  消息*/
var $cart=$(".cart")
$cart.mouseover(function(){
    var $cart=$(this);
    var $cart_hide=$(".cart_hide") 
    $cart_hide.css("display","block");
})
$cart.mouseleave(function(){
    var cart=this;
    var $cart_hide=$(".cart_hide") 
    $cart_hide.css("display","none");
})
var $message=$(".message")
$message.mouseover(function(){
    var message=this;
    var $mes_hide=$(".mes_hide") 
    $mes_hide.fadeIn();
})
$message.mouseleave(function(){
    var message=this;
    var $mes_hide=$(".mes_hide") 
    $mes_hide.fadeOut();
})

var $message=$(".message")
$message.mouseover(function(){
    var message=this;
    var $mes_hide=$(".mes_hide") 
    $mes_hide.fadeIn();
})
$message.mouseleave(function(){
    var message=this;
    var $mes_hide=$(".mes_hide") 
    $mes_hide.fadeOut();
})
/*商店*/
var $store=$(".store")
$store.mouseover(function(){
    var store=this;
    $(".store_hide").css("visibility","visible");
    $(".cup").css("visibility","visible")
})
$store.mouseleave(function(){
    var store=this;
    $(".store_hide").css("visibility","hidden");
    $(".cup").css("visibility","hidden")
})
var $dropPrev=$(".drop_prev")
$.each($dropPrev,function(){
    var $dropPrev=$(this)
    $dropPrev.hover(
        function(){
           $dropPrev.find(".prev").css("display","block"),           
           $(".cup").css("visibility","hidden")
        },
        function(){
            $dropPrev.find(".prev").css("display","none"),
            $(".cup").css("visibility","visible")
        }
    )
})

var $dropNext=$(".drop_next")
$.each($dropNext,function(){
    var $dropNext=$(this)
    $dropNext.hover(
        function(){
            $dropNext.find(".next").css("display","block")
        },
        function(){
            $dropNext.find(".next").css("display","none")
        }
    )
})
var $magazine=$(".magazine")
$magazine.mouseover(function(){
    var magazine=this;
   $(".magazine_drop").css("visibility","visible")
})
$magazine.mouseleave(function(){
    var magazine=this;
    $(".magazine_drop").css("visibility","hidden");
})
var $share=$(".share")
$share.mouseover(function(){
    var share=this;
   $(".share_drop").css("visibility","visible")
})
$share.mouseleave(function(){
    var magazine=this;
    $(".share_drop").css("visibility","hidden");
})

var $img=$(".search>img")
$img.click(function(){
    var img=this;
    var $input=$(".search>input")
    $input.toggle()
    })
})
})