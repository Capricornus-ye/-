const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.post('/login',(req,res)=>{
	var obj=req.body;
  //验证数据是否为空
  var $uname=obj.uname;
  var $upwd=obj.upwd;  
  if(!$uname){
    res.send({code:401,msg:'uname required'});
	return;
  }
  if(!$upwd){
    res.send({code:402,msg:'upwd required'});
	return;
  }
  //执行SQL语句，查看是否登录成功（使用用户名和密码两个条件能查询到数据）
  pool.query('SELECT * FROM lc_user WHERE uname=? AND upwd=?',[$uname,$upwd],(err,result)=>{
    if(err) throw err;
	//判断查询的结果（数组）长度是否大于0
	//如果大于0，说明查询到数据，有这个用户登录成功
	if(result.length>0){
	  res.send({code:1,msg:'login suc'});
	}else{
	  res.send({code:-1,msg:'login err'});
	}
  });
});
//导出路由器
module.exports=router;