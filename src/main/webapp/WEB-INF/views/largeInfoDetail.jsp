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
.font-size16{
font-size: 16px;
color: ##4e4e4e;
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
			<strong style="line-height: 100px;font-size: 70px;font-family: 方正兰亭超细黑简体;	">非洲投资汇</strong><span class="desc" style="font-family: 仿宋;font-size: 30px;">为投资和出口非洲的企业提供机会</span>
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
				
				<div class="span24" style="margin: 10px 0 12px 15px">
				<img alt="" src="images/info.png" style="margin:-6px 5px 0 0;padding: 2"><span style="color: #4e4e4e;font-size: 18px;">联系方式</span>
				</div>
				<!-- <div class="span24 font-size14" style="margin: 0">
				<textarea rows="5" cols="5"></textarea>
				<div class="span24 font-size14" >
				<img alt="" src="images/submit.jpg">
				</div>
				</div> -->
				
				
				
				<div class="span24 font-size16" >
				Q Q：348570914
				</div>
				<div class="span24 font-size16" >
				微信：zhour992310
				</div>
				</div>


	
				
	</div>
	</div>
	
	<!--  
	<div class="container" style="font-size: 1.2em">
		<form id="formID" action="createInquiry">
			<div class="row" style="margin: 10px 0; text-align: center; font-size: 1.2em">



				<span> <strong>项目信息详情•<span style="color: #ff8000">咨询联系</span></strong></span>
				
				 
				<select id="fieldId" name="fieldId">
					<option value="-1">全部</option>
					<c:forEach items="${fieldList}" var="field">
						<option value="${field.id}"
							<c:if test="${field.id==fieldId}">selected="selected" </c:if>>${field.fieldDesc_cn}</option>
					</c:forEach>
				</select>
				<button type="button" class="btn btn-primary btn-xs">选定</button>
				
				
				
			</div>

			<hr>
			<div class="row" style="margin: 0 0 10px 0;">
				<div class="span12">
					<strong> ${info.title}</strong>
				</div>
			</div>
			<div class="row"
				style="margin: 10px 0; line-height: 30px; max-height: 180px; text-indent: 2em;">
				<div class="span12" style="overflow-y: auto; overflow-x: visible;">${info.description}</div>
			</div>
			<hr>

			<div class="row" style="margin: 10px 0">
				<div class="span2" style="padding: 0;text-align: right;">留言：</div>
				<div class="span8">
					<textarea name="content" id="content"
						placeholder="可简单介绍投资方背景、投资目标等。" rows="6" 	style="width: 100%"></textarea>
				</div>	
				<div class="span2"></div>			
			</div>
			<div class="row" style="margin:0">
				<div class="span2" style="padding: 0;text-align: right;"></div>
				<div class="span8">
					<span class="placeholder" style="font-size: 0.8em">如需尽快联系，请在留言框内注明联系电话(手机)。</span>
				</div>	
				<div class="span2"></div>			
			</div>
			<div class="row" style="margin: 10px 0;text-align: center;">
				<div class="span12">
					<button id="postBtn" class="btn btn-warning" type="button">提交需求</button>
				</div>
				<div class="span12 text-center">
					<span id=success_span style="margin-left: 10px; display: none;"
						class="label label-success">提交成功！</span> <span
						id="error_span" style="margin-left: 10px; display: none;"
						class="label label-danger"><span id="errmsg">请勿重复提交，您的需求将由项目方通过邮件回复！</span></span>
				</div>

			</div>
			<input type="hidden" name="info_id" id="info_id" value="${info.id}">
			<input type="hidden" name="group_send" id="group_send" value="">
			<input type="hidden" name="requires1" id="requires1" value="">
			<input type="hidden" name="requires2" id="requires1" value="">
			<input type="hidden" name="requires3" id="requires1" value="">
		</form>
	</div>
		<!-- /container -->

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
		$("#postBtn").click(function() {			
			$("#error_span").hide();
			if ($.trim($("#content").val()) == "") {
				$("#errmsg").html("请填写留言");
				$("#error_span").show();
				return;
			}
			var content = $.trim($("#content").val());
			
			var group_send = '0';
			var field_id = $("#fieldId").val();
			var info_id = $("#info_id").val();

			$("#postBtn").attr("disabled", "disabled");
			$.post("createInquiry", {
				content : content,
				requires1 : "",
				requires2 : "",
				requires3 : "",
				group_send : group_send,
				field_id : field_id,
				info_id : info_id
			}, function(result) {
				if ("001" == result) {
					$("#errmsg").html("登录超时，<a href='\' target='_blank'>点击此处</a>进入首页点击“进入”按钮重新登录 ！");
					$("#error_span").show();
					$("#postBtn").removeAttr("disabled");
				} else if ("000" == result) {
					$('#success_span').show();
					$('#success_span').delay(3000).hide(0);
				} else {
					$("#errmsg").html("系统异常，请稍后再试！");
					$("#error_span").show();
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