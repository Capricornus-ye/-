   //轮播
    //图片淡入淡出，圆点自动向后
    function changeImg(a){
        $(".carousel-img li").eq(a).fadeIn().siblings().fadeOut();
        $(".ind li").eq(a).addClass("active").siblings().removeClass("active")
    }
    var n=0;
    var t=null;
    //自动轮播
    function autoPlay(){
        t=setInterval(function(){
            n++;
            if(n==4){
                n=0;
            }
            changeImg(n);
        },5000)
    }
    autoPlay();
    //左右按钮
    $("#prev").click(function(){
        clearInterval(t);
        n--;
        if(n==-1){
            n=3
        }
        changeImg(n);
        autoPlay();
    })
    $("#next").click(function(){
        clearInterval(t);
        n++;
        if(n==4){
            n=0
        }
        changeImg(n);
        autoPlay();
    })
    //点击圆点获取图片
    $(".ind li").click(function(){
        clearInterval(t);
        n=$(this).index();
        changeImg(n);
        autoPlay();
    })
    //移入轮播停止
    $(".carousel-img").mouseover(function(){
        clearInterval(t);
    })
    //移出轮播播放
    $(".carousel-img").mouseleave(function(){
        autoPlay();
    })

    $(".carousel").hover(
        function(){
        $("#prev").fadeIn().next().fadeIn();
        
        },
        function(){            
        $("#prev").fadeOut().next().fadeOut();

        }
    )