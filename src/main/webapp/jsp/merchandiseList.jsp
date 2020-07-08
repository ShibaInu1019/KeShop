<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/merchandiseList.css">
<script src="../js/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/index/category.action',
			type : 'post',
			dataType : 'json',
			success : function(d) {
				$.each(d,function(i,n){
					$("#sel").append("<option>"+d[i].catename+"</option>");
				});
			}
		});
	});
	
	function findMerListById() {
		var nameKey = $("#nameKey").val();
		var selKey = $("#sel").find("option:selected").text();
		location.href='${pageContext.request.contextPath}/index/findMerListById.action?nameKey='
			+ nameKey+'&selKey='+selKey;
	}
	
</script>
</head>
<body>
	<div id="box">
	
		<div id="header">
		<img alt="" src="<%=request.getContextPath() %>/images/tianmao.jpg" height="140px">
		<div class="searchDiv">
			<img alt="" src="../images/icon_login.gif" class="navLeft"> <input
				class="navLeft" id="nameKey" value="<%=request.getSession().getAttribute("nameKey")%>"> 
				<select id="sel" class="navLeft">
				<option><%=request.getSession().getAttribute("selKey")%></option>
				<option >所有商品</option>
			</select> <img alt="" src="../images/icon_search.gif" class="navLeft" onclick="findMerListById()">
		</div>

	</div>
	<div id="menu">
		<div class="navigatorDiv">
			<ul>
				<li><a>商城首页</a></li>
				<li><a>购物车管理</a></li>
				<li><a>订单管理</a></li>
				<li><a>顾客留言</a></li>
				<li><a>修改注册资料</a></li>
			</ul>
		</div>
	</div>
		<div id="main">
			<div class="merListLogo">
			<z:if test="${special eq 1 }">
				<img alt="" src="../images/NewGoods_05.gif">
			</z:if>
			
			<z:if test="${special eq 0 }">
				<img alt="" src="../images/NewGoods_03.gif">
			</z:if>
				<z:if test="${special eq 2 }">
				<img alt="" src="../images/NewGoods_04.gif">
			</z:if>
			</div>
			<div class="merListContent">
				<table class="merListTable">
					<tr class="table_th_bg tr1">
						<th class="td1">商品图片</th>
						<th class="td2">商品基本信息</th>
						<th class="td3">商品描述</th>
						<th class="td4">基本操作</th>
					</tr>
					<z:forEach items="${merlist}" var="mer">
					<tr>
						<td>
							<img alt="" src="../${mer.picture}" class="merImg">
						</td>
						<td>
							<a class="font_red">${mer.mername}</a><br>
							市场价：￥${mer.price}<br>
							<z:if test="${mer.special eq 1}">
							特价：￥${mer.sprice}<br>
							</z:if>
							生产厂家：${mer.manufacturer}<br>
						</td>
						<td>
						${mer.merdesc}
						</td>
						<td>
							<img alt="" src="../images/icon_car.gif"><br>
							<img alt="" src="../images/icon_buy.gif"><br>
						</td>
					</tr>
					<tr class="table_hr">
						<td colspan="4"></td>
					</tr>
					</z:forEach>
				</table>
				
			
			</div>
		</div>
		
		
		<div id="footer">
			<div class="footerCopyDiv">
				版权所有：张源
			</div>
		</div>
	</div>
</body>
</html>