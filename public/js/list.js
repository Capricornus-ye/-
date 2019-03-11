$sel=$(".selPrice")
$sel.mouseover(function(){
    var sel=this;
    var $drop=$(".selDrop");
    $drop.fadeIn();
})
$sel.mouseleave(function(){
    var sel=this;
    var $drop=$(".selDrop");
    $drop.fadeOut();
})
$(function(){
    //ajax("http://localhost:3000/index")
    $.ajax({
      url:"http://localhost:3000/list",
      type:"get",
      dataType:"json" //JSON.parse(res)
    })
    .then(products=>{
      //var products=JSON.parse(res);
      var html="";
      for(var i=0;i<products.length;i++){
      html+=`<div><img src="${products[i].pic}" alt="">
      <div class="bar">
      <a href="details.html"><img src="img/678.jpg" alt="">${products[i].brand}</a>
      <a href="details.html">594 <img src="img/heart_gray20_18.png" alt=""></a>
      </div>
      <div class="mask">
          <a href="details.html">
          <p class="money">￥${products[i].price.toFixed(2)}</p>
          <p class="title">${products[i].title}</p>
          <p class="desc">${products[i].details}</p>
          </a>
      </div>
      </div> `};
      var $first=$("#shop");
      $first.html(html);  
      var html=`<img src="img/178.jpg" alt=""><span>限时特惠</span>`
        var $sec=$("#shop>div:nth-child(2),#shop>div:nth-child(5),#shop>div:nth-child(17)")
        $sec.append(html) 
    });   
    var t=setTimeout(function(){$showMask=$(".shopList>div");
      $.each($showMask,function(){
      var $showMask=$(this)
      $showMask.hover(
          function(){              
              $showMask.find(".mask").css("display","block")
          },
          function(){
              $showMask.find(".mask").css("display","none")
          }
      )
     }) },1000)
  });