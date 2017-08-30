<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>非洲投资站-投资信息</title>
<meta name="viewport"
	content="width=device-width, initial-scale=0.3, user-scalable=yes">
<meta name="description" content="">
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="assets/css/bui-min.css">
<link rel="stylesheet" type="text/css" href="assets/css/dpl-min.css">
<link rel="stylesheet" type="text/css" href="css/select2.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/info.css">

<style type="text/css">
#a, #b {
	filter: alpha(opacity = 90);
	-moz-opacity: 0.9;
	-khtml-opacity: 0.9;
	opacity: 0.9;
	background-color: white;
	padding: 15px 0px;
	font-family: 微软雅黑;
	margin-top:25px;
	margin-bottom: 20px; 
	width: 498px; 
}

[class*="span"] {
    float: left;
    margin-left: 0px;
}
.row{
margin: 15px 0;
}
.a_item{
margin:5px 15px;
border-bottom: 1px dashed #dedede;
}
.b_item{
margin:0px 15px;
border-bottom: 1px dashed #dedede;
}
.a_desc{
color: #818181;font-size: 14px;line-height: 22px;
}
.b_desc{
color: #818181;font-size: 14px;line-height: 22px;margin: 13px 0;
}
.b_project{
margin: 14px 0;
}
.pagebar{
padding: 0 143px;
}

.pagebar .span1
{
margin-right: 6px;
height: 25px;
width: 25px;
background-color: #505050;
color: #fff;
text-align: center;
line-height: 25px;
}
.pagebar .span1:LAST-CHILD
{
margin-right: 0px;
}
.pagebar .active
{
background-color: #ff8101;
}
.select2-results__options{
text-align: left;
}
.select2-container--default .select2-results__option--highlighted[aria-selected]{
background-color: #505050;
}
.select2-container .select2-selection--single{
line-height: 36px;
height: 36px;
border-radius: 0;

background-color: #f1f1f1;
}
.select2-container--default .select2-selection--single .select2-selection__rendered{
line-height: 36px;
height: 36px;
}
.select2-selection .select2-selection--single{
border-radius: 0;
}
a:link {
	color: #018fe2;
} /* 未被访问的链接 */
a:visited {
	color: #018fe2;
} /* 已被访问的链接 */
a:hover {
	color: #018fe2;
} /* 鼠标指针移动到链接上 */
a:active {
	color: #018fe2;
} /* 正在被点击的链接 */

.page{
cursor: pointer;
}
</style>
</head>
<body style="text-align: center;">
	<form id="formID" action="">
		<div class="row title" style="text-align: left;margin: 20px;">
			<p style="margin: 0 0 10px">
				<strong style="line-height: 100px;font-size: 70px;font-family: 方正兰亭超细黑简体;	">非洲投资汇</strong><span class="desc" style="font-family: 仿宋;font-size: 30px;">为投资和出口非洲的企业提供机会</span>

			</p>
		</div>


		<div style="background: url('images/bg.jpg'); width: 100%; background-position: center; text-align: center;">
			<div class="row"
				style="width: 1000px; height: 700px; margin: auto; text-align: left;">
				<div id="a" class="span12" style="margin-right:2px;height: 650px">

					<div id="a_title" class="row" style="margin:0 15px;">
					<div id="a_title1" class="span3" style="width: auto;"><span style="font-size: 14px; line-height: 36px;">基础设施•矿业开采</span></div>
					<div id="a_title2" class="span6" style="width: auto;margin-left: 10px;">
								<table id="searchTable">
									<tr>
										<td id="td1" style="border: 1px solid #cdccca;">
										<input type="text" id="querytext" name="querytext" value="${querytext}" placeholder="关键词"
											style="margin: 0; height: 34px; line-height: 34px; padding: 0 5px; border-radius: 0; margin: 0; border: 0;width: 270px;background-color: #f1f1f1"></td>
										<td id="td2"
											style="width: 62px; border: 1px solid #ff8101; background-color: #ff8101; text-align: right;">
											<img id="searchBtn" alt="搜索" src="images/btn_search.jpg"
											style="border: 0;; cursor: pointer;height: 34px;width: auto;">
										</td>
									</tr>
								</table>
					</div>
					</div>
					<marquee onMouseOut="this.start()" onMouseOver="this.stop()"
					direction="down" behavior="scroll" scrollamount="2" scrolldelay="0" loop="-1" style="width: 100%; height: 600px; margin: 0;">
					
					<c:forEach items="${LargeList}" var="info" varStatus="status">
					<div class="row a_item">
					<div class="row a_project">
					<div class="span6"><img alt="标题图标" src="images/title_img.png"><span
										style="font-size: 18px; color: #018fe2; margin: 0 5px"><a href="infoDetail/${info.id}" target="_blank">${info.title}</a></span><img
										alt="标题图标" src="images/hand.png"></div>
					<div class="span6" style="text-align: right;width: 235px"><span style="font-size: 14px; color: #4e4e4e"><fmt:formatDate value='${info.createTime}' pattern='yyyy/MM/dd'/></span><img alt="标题图标" src="images/weizhi.png" style="margin: 0 8px;"><span
										style="font-size: 18px; color: #4e4e4e">${info.country}</span></div>
					</div>
					<div class="row a_desc">
					${info.description}   
					</div>
					</div>
					</c:forEach>
					
					</marquee>


				</div>
				<div id="b" class="span12" style="margin-left: 2px;height: 650px">

					<div class="row" style="margin:0 15px;">
					<div class="span3" style="width: auto;"><span style="font-size: 14px; line-height: 36px;">工业制造•农业开发•代理合作</span></div>
					<div class="span6" style="width: auto;margin-left: 10px;text-align: left;">
						<select id="fieldId" name="fieldId"
							style="margin: 0;height: 36px;line-height:36px;border-radius: 0;width: 270px">
							<option value="">选择领域</option>
							<c:forEach items="${fieldList}" var="field">
								<option value="${field.id}" style="border: none;"
									<c:if test="${field.id==fieldId}">selected="selected" </c:if>>${field.fieldDesc_cn}</option>
							</c:forEach>
						</select>
					</div>
					</div>
				<c:forEach items="${list}" var="info" varStatus="status">
					<div class="row b_item">
					<div class="row b_project">
					<div class="span6"><img alt="标题图标" src="images/title_img.png"><span
										style="font-size: 18px; color: #018fe2; margin: 0 5px">${info.title}</span></div>
					<div class="span6" style="text-align: right;width: 235px"><span style="font-size: 14px; color: #4e4e4e"><fmt:formatDate value='${info.createTime}' pattern='yyyy/MM/dd'/></span><img alt="标题图标" src="images/weizhi.png" style="margin: 0 8px;"><span
										style="font-size: 18px; color: #4e4e4e">${info.country}</span></div>
					</div>
					<div class="row b_desc" style="position:relative;min-height: 43px;">
					${info.description}<span style="position:absolute;right:0;bottom:0;color: #24a9f6"><a href="infoDetail/${info.id}" target="_blank">【查看更多】</a></span>   
					</div>
					</div>
				</c:forEach>

					<div id="c" class="row">

					</div>
		

					<div class="row pagebar">
					<div class="span1 page  ">&#60;</div>
					
					<c:forEach items="${pageList}" var="page" varStatus="status">
					<div class="span1 page  <c:if test="${pageNum==page}">active</c:if>">${ page}</div>
					
					</c:forEach>
					<div class="span1 page  ">&#62;</div>
					
					</div>
				</div>
			</div>
		</div>
		<input id="pageNum" name="pageNum" type="hidden" value="${pageNum}">
		<input id="totalPageNum" type="hidden" value="${totalPageNum}">
	</form>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
						<script type="text/javascript" src="css/bootstrap/js/bootstrap.js"></script>
						<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
						<script type="text/javascript" src="js/select2.min.js"></script>
<script type="text/javascript">
	var n=${list.size()};
	$("#b").height($("#a").height());
	
	$("#c").height((5-n)*106);
	
	
	$("#postBtn").click(function() {
		$("#pageNum").val(1);
		$("#formID").submit();
	});
	$("#searchBtn").click(function() {
		$("#formID").submit();
	});
	$("#fieldId").change(function() {
		$("#formID").submit();
	});

	$(document).ready(function() {
		$('input, textarea').placeholder();
		
		$(".span1.page").click(function() {			
			var value=$(this).text();			
					
			if("<"==value){
				value= 1;
				}
			if(">"==value) {
				value =${totalPageNum};
				
			}		
			$("#pageNum").val(value);	
			$("#formID").submit();
			
			
		});
		
		

		

	});
	window.onload = function() {
		$('select').select2({
			minimumResultsForSearch : Infinity
		});	
	};
	
	
	

</script>
</html>