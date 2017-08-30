<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>非洲投资站-投资信息-${info.title}</title>
<meta name="viewport" content="width=device-width, initial-scale=0.5,user-scalable=yes">
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<base href="<%=basePath%>">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="assets/css/bui-min.css">
<link rel="stylesheet" type="text/css" href="assets/css/dpl-min.css">
<!--[if lte IE 6]>
  <link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap-ie6.css">
  <![endif]-->
<!--[if lte IE 7]>
  <link rel="stylesheet" type="text/css" href="css/bootstrap/css/ie.css">
  <![endif]-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/info.css">
<link rel="stylesheet" type="text/css" href="css/select2.min.css">
<style type="text/css">
body{font-family: 微软雅黑;}
.detail_title{
	width: 100%;	
	text-align: center;
	filter: alpha(opacity = 90);
	-moz-opacity: 0.9;
	-khtml-opacity: 0.9;
	opacity: 0.9;
	background-color: white;
	padding: 22px 0;
	margin: 23px 0 0 0;
}
.detail_content{
	width: 100%;
	text-align: left;
	filter: alpha(opacity = 90);
	-moz-opacity: 0.9;
	-khtml-opacity: 0.9;
	 opacity: 0.9;
	 background-color: white;
	 margin: 5px 0  0 0;
	 height: 587px;
		
}
textarea{
	filter: alpha(opacity = 100);
	-moz-opacity: 1;
	-khtml-opacity: 1;
	opacity: 1;
	
	border-radius: 0;
	height: 100px;
	width: 500px;
	margin:0 0 10px 36px;
	

}
.font-size14{
font-size: 14px;
color: #818181;
margin: 10px 0 10px 36px
}
.checkbox {
 width: 19px;
 height: 25px;
 padding: 0 5px 0 0;
 background: url(images/gou.png) no-repeat;
 display: block;
 clear: left;
 float: left;
}
</style>
</head>
<body>
	<div class="row title" style="text-align: left;">
		<p style="margin: 0 0 10px">
			<strong style="line-height: 100px;font-size: 70px;font-family: 方正兰亭超细黑简体;	">非洲投资汇</strong><span class="desc" style="font-family:仿宋;font-size: 30px;">为投资和出口非洲的企业提供机会</span>
		</p>
	</div>
	<div style="background: url('images/bg.jpg'); width: 100%; background-position: center; text-align: center;">
	
	<div class="row" style="width: 1000px; height: 700px; margin: auto; text-align: left;">
				<div class="row detail_title">				
				<img alt="" src="images/weizhi_2.png" style="margin:-10px 5px 0 0"><span style="color: #606060;font-size: 24px;line-height: 24px;">项目信息详情<span style="font-weight: 900;color: #4e4e4e">  • 咨询联系</span></span>
				</div>
				<div class="row detail_content">	
				<div class="span24" style="margin: 28px 0 12px 15px;width: 1000px">
				<img alt="" src="images/title_img_2.png" style="margin:-6px 5px 0 0;padding: 2"><span style="color: #4e4e4e;font-size: 18px;">${info.title}</span>
				</div>			
				<div class="span24" style="color: #818181;font-size: 14px;line-height: 24px;width: 970px;margin: 0 15px;padding-bottom:18px; border-bottom: 1px dashed #dedede;">
				${info.description}
				</div>	
				<div class="span24" style="margin: 28px 0 12px 15px">
				<img alt="" src="images/info.png" style="margin:-6px 5px 0 0;padding: 2"><span style="color: #4e4e4e;font-size: 18px;">勾选需求</span>
				</div>
				<div class="span24 font-size14" >
				<img id="img1" class="img"  src="images/gou.png" style="margin:-3px 5px 0 0;">需要项目的相关图片，如实拍照片、证明文件等。
				</div>
				<div class="span24 font-size14" >
				<img id="img2" class="img" src="images/gou.png" style="margin:-3px 5px 0 0;">需要详细全面的项目数据信息。
				</div>
				<div class="span24 font-size14" >
				<img id="img3" class="img"  src="images/gou.png" style="margin:-3px 5px 0 0;">去项目方国家考察能全程接待。
				</div>
				<div class="span24" style="margin: 10px 0 12px 15px">
				<img alt="" src="images/liuyan.png" style="margin:-6px 5px 0 0;padding: 2"><span style="color: #4e4e4e;font-size: 18px;">留言</span>
				</div>
				<div class="span24 font-size14" style="margin: 0">
				<textarea id="content"rows="5" cols="5"></textarea>
				</div>
				<div class="span24 font-size14" style="margin-top: 0;margin-left: 0">
				<input id="postBtn" type="button" style="border: none;background-image: url('images/submit.jpg');width:162px;height: 40px;margin:0 0 0 36px; "   />
				
				
				<span id="errmsg"       class="label" style="margin-left: 10px;font-size: 14px;padding: 4px 5px ;font-weight: 400;background-color: #fe0000;display: none;margin-top: -20px"></span>
				<span id="success_span" class="label" style="margin-left: 10px;font-size: 14px;padding: 4px 5px ;font-weight: 400;background-color: #5cb85c;display: none;margin-top: -20px">您的需求将由项目方通过邮件回复！</span>
				
				</div>
				
				<div class="span24 font-size14" style="margin-top: -5px">
				<img id="img4" class="img"  src="images/gou.png" style="margin:-3px 5px 0 0;">同时发至其他同类项目，更多比较选择。
				</div>
				</div>


	
				
	</div>
	</div>
	
	
	
	<img src="images/gou_no.png" style="display: none;"/>
	<div class="container" style="font-size: 1.2em">
		<form id="formID" action="createInquiry">
			<input type="hidden" name="info_id" id="info_id" value="${info.id}">

		</form>
	</div>
</body>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="css/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="js/select2.min.js"></script>

<!--[if lte IE 6]>
  <script type="text/javascript" src="js/bootstrap-ie.js"></script>
  <![endif]-->
<script type="text/javascript">
	$(document).ready(function() {	
		
		$(".img").click(function() {			
			//更换图标
			var src=$(this).attr("src");
			src=src.substr(src.length-7,7);				
			if(src=="gou.png")				
				$(this).attr("src", "images/gou_no.png");				
			else				
				$(this).attr("src", "images/gou.png");
				
		});	
		
		
		
		$("#postBtn").click(function() {			
			$("#errmsg").hide();
			if ($.trim($("#content").val()) == "") {
				$("#errmsg").html("请填写留言");
				$("#errmsg").show();
				return;
			}
			var content = $.trim($("#content").val());
			var requires1;
			var requires2;
			var requires3;
			var group_send = '0';
			var field_id = "-1";
			var info_id = $("#info_id").val();
			
			
			if($("#img1").attr("src")=="images/gou.png")
				requires1 = "需要项目的相关图片，如实拍照片、证明文件等。";
			else
				requires1="";
			if($("#img2").attr("src")=="images/gou.png")
				requires2 = "需要详细全面的项目数据信息。";
			else
				requires2="";
			if($("#img3").attr("src")=="images/gou.png")
				requires3 = "去项目方国家考察能全程接待。";
			else
				requires3="";

			if($("#img4").attr("src")=="images/gou1.png")
				group_send = "1";
			else
				group_send = "0";

			
			$("#postBtn").attr("disabled", "disabled");
			$.post("createInquiry", {
				content : content,
				requires1 : requires1,
				requires2 : requires2,
				requires3 : requires3,
				group_send : group_send,
				field_id : field_id,
				info_id : info_id
			}, function(result) {
				if ("001" == result) {
					$("#errmsg").html("登录超时，<a href='<%=basePath%>' target='_blank'>点击此处</a>进入首页点击“进入”按钮重新登录 ！");
					$("#errmsg").show();
					$("#postBtn").removeAttr("disabled");

				} else if ("000" == result) {
					$('#success_span').show();
					$('#success_span').delay(3000).hide(0);
				} else {
					$("#errmsg").html("系统异常，请稍后再试！");
					$("#errmsg").show();
					$("#postBtn").removeAttr("disabled");
				}
			});

		});
	});
	window.onload = function() {
		$('input, textarea').placeholder();

	};
</script>

</html>