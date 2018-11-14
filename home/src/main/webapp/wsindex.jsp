<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
    	<meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>智能聊天</title>
        <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    </head>

    <body>

        <div class="container" style="padding-top:20px;">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">小智</h3>
                </div>
                <div class="panel-body" id="content"></div>
            </div>
            <hr/>
            <input type="text" class="form-control" placeholder="msg" value="" aria-describedby="sizing-addon1" id="msg">
            <hr/>

            <hr/>
            <button type="button" class="btn btn-lg btn-success btn-block" onclick="emit()">发送</button>
        </div>

        <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
        <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/webSocket/core.js" charset="UTF-8"></script>
        <!-- 
        	<script type="text/javascript" src="js/webSocket/index.js" charset="UTF-8"></script>
         -->
        <script type='text/javascript'>
		      //创建一个连接，这里的参数是服务端的链接
		       var socket = new WebSocket("ws://39.105.85.33:8887");
		       //var socket = new WebSocket("ws://127.0.0.1:8887");
		      $(function() {
		          //初始化加载listen方法
		          listen();
		      })
		
		      //向客户端发送消息
		      function emit() {
		
		          //encodeScript方法用来转义<>标签，防止脚本输入，方法内容在core.js里面
		          var text = encodeScript($("#msg").val());
		          var msg = {
		              "message" : text,
		              "color" : "#FF83FA",
		              "bubbleColor" : "#1E90FF",
		              "fontSize" : "160%",
		              "fontType" : "黑体"
		          };
		          msg = JSON.stringify(msg);
		          //向服务端发送消息
		          socket.send(text);
		
		          //将自己发送的消息内容静态加载到html上，服务端实现自己发送的消息不会推送给自己
		          $("#content").append("<kbd style='color: #FF5512;float: right; font-size:160%;background-color: #FFFFFF;border-radius:30px;box-shadow: inset 0 -1px 0 rgba(244, 12, 12, 0.3)'>"
		          						+ text 
		          						+ "</kbd><br/>");
		          //将消息文本框清空
		          $("#msg").val("");
		      }
		
		      function listen() {
		          //打开连接时触发
		          socket.onopen = function() {
		              $("#content").append("<kbd style='color: #02A048;float: left; font-size:120%;background-color: #FFFFFF;border-radius:30px;box-shadow: inset 0 -1px 0 rgba(244, 12, 12, 0.3)'>"
		              						+"您好!您想要了解什么？"
		              						+"</kbd></br>");
		          };
		          //收到消息时触发
		          socket.onmessage = function(evt) {
		              //var data = JSON.parse(evt.data);
		          	var message = evt.data;
		              //$("#content").append("<kbd style='color: #" + data.color + ";font-size: " + data.fontSize + ";margin-top: 10px;'>" + data.userName + " Say: " + data.message + "</kbd></br>");
		              $("#content").append("<kbd style='color: #02A048;font-size:150%;margin-top: 10px;;background-color: #FFFFFF;border-radius:30px;box-shadow: inset 0 -1px 0 rgba(244, 12, 12, 0.3)'> "
		              						+"小智: " 
		              						+ message 
		              						+ "</kbd></br>");
		          };
		          //关闭连接时触发
		          socket.onclose = function(evt) {
		              $("#content").append("<kbd>" + "连接关闭!" + "</kbd></br>");
		          }
		          //连接错误时触发
		          socket.onerror = function(evt) {
		              $("#content").append("<kbd>" + "连接错误!" + "</kbd></br>");
		          }
		      }
		      //按下回车键时触发发送消息方法
		      document.onkeydown = function(event){
		          var e = event || window.event || arguments.callee.caller.arguments[0];
		          if(e && e.keyCode == 13){ // enter 键
		              emit();
		          }
		      };   
		</script>
    </body>
</html>