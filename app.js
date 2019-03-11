//使用express构建web服务器 --11:25
const express = require('express');
const session = require("express-session");
const bodyParser = require('body-parser');
/*引入路由模块*/
var index=require("./routes/index");
var list=require("./routes/list");
var users=require("./routes/users");
const cors=require("cors");
//6.配置跨域访问呢模块 那个域名跨域访问允许
//脚手架8080允许
//origin    允许跨域访问域名列表
//credentials  跨域访问保存session  id

var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
app.use(cors({
  origin:["http://127.0.0.1:5500","http://localhost:5050"],
  credentials:true
}))
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/list",list);
app.use("/users",users);