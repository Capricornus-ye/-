$(function(){
    $(".size>div>a").click(function() {
        $(this).siblings('a').removeClass('bor');
        $(this).addClass('bor');                        
    });
}); 
$(document).ready(function(){
    //加的效果
    $("#add").click(function(){
      var n=$(this).prev().val();
      var num=parseInt(n)+1;
      if(num==0){ return;}
         $(this).prev().val(num);
    });
    //减的效果
    $("#sub").click(function(){
      var n=$(this).next().val();
      var num=parseInt(n)-1;
      if(num==0){ return}
      $(this).next().val(num);
     })});
