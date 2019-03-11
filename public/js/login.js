$(function(){
    $(".btn").click(function(){
        var uname=$(".uname").val();
        var upwd=$(".upwd").val();        
        $.ajax({
            url:"http://localhost:3000/users/login",
            type:"post",
            data:{uname,upwd},
            dataType:"json",
            success: function(result) {
                console.log(result)
            if(result.code==1){
            var t=setTimeout(function(){
               window.location.href="index.html"
            },3000)               
            $(".success").fadeIn()     
            }
              }
            })
        })
    })
