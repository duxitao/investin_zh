<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>非洲投资汇-首页</title>
<meta name="viewport" content="width=device-width, initial-scale=0.4,user-scalable=yes">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/select2.min.css">

</head>


<body style="min-height: 600px">
	<div class="row title">
		<p style="margin: 0 0 10px">
			<strong>非洲投资汇</strong><span class="desc">为投资和出口非洲的企业提供机会</span>
		</p>
	</div>
	<div class="container center" style="width: 600px">

		<div class="row titel">基础设施•矿业开发•加工制造•农业开发•代理合作</div>

		<div class="row submit">
			<button id="enterBtn" class="btn btn-large" type="button"
				data-toggle="modal" data-target="#myModal">进入</button>

		</div>
		<div class="row info"><img alt="" src="images/douzai.png" style="width: 600px;height: auto;"></div>
	</div>
	<div class="navbar-fixed-bottom">
		<div class="container" style="text-align: center;">
			<div class="row menu" style="font-size: 1.5em;line-height: 2em;"><a href="introduction" target="_blank">公司简介</a>	|	<a data-toggle="modal" href="#myModal">服务中心</a>	|	<a href="contact" target="_blank">联系我们</a></div>
			<div class="row" style="font-size: 1em;line-height: 2em;">Copyright © 2016-2017 徐州荣时商务管理有限公司
				All Right Reserved.</div>
		</div>
	</div>

	<!-- /container -->
	<div id="myModal" class="modal fade" data-keyboard="false"
		data-backdrop="static" style="text-align: center;">
		<div class="modal-dialog" style="margin: auto;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<span class="modal-title" id="myModalLabel"><strong>请用邮箱登录</strong></span>
				</div>
				<div class="modal-body" style="padding-bottom: 0">
					<p>
						<label id="email_lbl">邮箱:</label><input id="email"
							class="none-border" name="email" type="text" maxlength="45">

						<select name="suffix" id="suffix" style="margin: 0; width: 130px;">
							<c:forEach items="${emailSuffixList}" var="suffix">
								<option value="${suffix}">${suffix}</option>
							</c:forEach>

						</select>
					</p>
					<p>
						<label id="code_lbl"></label><label> <input id="code"
							class="blue-border" name="code" type="text"
							placeholder="请输入邮箱验证码" maxlength="6"></label>
						<button id="generateBtn" class="btn"
							style="padding: 2px; font-size: 0.8em" type="button">发送邮箱验证码</button>
					</p>
					<p>
						<span id="generateMsg" style="visibility: hidden; margin-top: 0;"
							class="label label-danger">请输入邮箱验证码</span>
					</p>
				</div>

				<div class="modal-footer">

					<button id="loginBtn" class="btn" type="button"
						style="padding: 5px 20px">验证</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="js/select2.min.js"></script>

	<script type="text/javascript">
		var wait = 60;
		$(document).ready(function() {
			
							$("#generateBtn").click(function() {
								$("#generateMsg").css("visibility","hidden");
								$("#generateMsg").removeClass();
								$("#generateMsg").addClass("label label-danger");
												var email = $.trim($("#email").val());
																					
												if(email=="")
													{
													$("#generateMsg").html("请输入邮箱！");	
													$("#generateMsg").css("visibility","visible");
													return;
													}
												email=email+$("#suffix").val();

												var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/; //验证邮箱的正则表达式
												if (!reg.test(email)) {
													$("#generateMsg").html("邮箱格式错误！");												
													$("#generateMsg").css("visibility","visible");
													return;
												}
												
												time($("#generateBtn"));
												$.post("sendEmailCode",{email : email ,type : "login"},
																function(result) {
																	if ("000" == result) {	
																		$("#generateMsg").html("验证码已发至您的邮箱，请注意查收。");
																		$("#generateMsg").removeClass();
																		$("#generateMsg").addClass("label label-success");
																		$("#generateMsg").css("visibility","visible");
																	} else {
																		wait=0;
																		$("#generateMsg").html("发送邮箱验证码出错，请稍后再试！");
																		$("#generateMsg").css("visibility","visible");
																	}
																});											
												}
											 );

							$("#loginBtn").click(
									function() {
										if ($.trim($("#code").val()) == "") {
											$("#generateMsg").html("请输入验证码！");
											$("#generateMsg").removeClass();
											$("#generateMsg").addClass("label label-danger");
											$("#generateMsg").css("visibility","visible");
											return;
										}
										$.post("login", {
											code : $.trim($("#code").val()),
											email : $.trim($("#email").val())+$("#suffix").val()
										}, function(result) {
											if ("001" == result) {
												$("#generateMsg").html("验证码错误！");
												$("#generateMsg").removeClass();
												$("#generateMsg").addClass("label label-danger");
												$("#generateMsg").css("visibility","visible");

											} else if ("000" == result) {
												window.location.href = "info";
											} else {
												$("#generateMsg").html("系统异常，请稍后再试！");
												$("#generateMsg").removeClass();
												$("#generateMsg").addClass("label label-danger");
												$("#generateMsg").css("visibility","visible");
											}
										});
									});
						});

		window.onload = function() {
	
			$("#myModal").on("show.bs.modal", function(e) {

				//设置弹出框垂直位置及宽度
				$(this).find('.modal-content').css("margin-top", 100);
				$(this).find('.modal-dialog').css("width", 400);
				//根据弹出框宽度计算水平位置
				//$(this).find('.modal-content').css("margin-left", ($(window).width() - 400) / 2 + 'px');
			});

			$('input, textarea').placeholder();

		};
		
		function time(o) {
			if (wait == 0) {
				o.removeAttr("disabled");
				o.text("发送邮箱验证码");
				wait = 60;
			} else {
				o.attr("disabled", "disabled");
				o.text(wait + "s 秒后重试");
				wait--;
				setTimeout(function() {
					time(o)
				}, 1000)
			}
		}
	</script>

</body>
</html>