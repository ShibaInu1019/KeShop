<%@page import="com.zy.entity.Merchandise"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css">
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/index/category.action',
			type : 'post',
			dataType : 'json',
			success : function(d) {
				$.each(d, function(i, n) {
					$("#sel").append(
							"<option>" + d[i].catename
									+ "</option>");
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
	<div id="header">
	<img alt="" src="<%=request.getContextPath() %>/images/tianmao.jpg" height="140px">
		<div class="searchDiv">
			<img alt="" src="<%=request.getContextPath() %>/images/icon_login.gif" class="navLeft"> <input
				id="nameKey" class="navLeft"  value="商品关键字"> 
				<select id="sel" class="navLeft">
				<option>所有商品</option>
			</select> <img alt="" src="<%=request.getContextPath() %>/images/icon_search.gif" class="navLeft" onclick="findMerListById()">
		</div>

	</div>
	<div id="menu">
		<div class="navigatorDiv">
			<ul>
				<li><a href="<%=request.getContextPath() %>">商城首页</a></li>
				<li><a href="<%=request.getContextPath() %>/cart/cart.action">购物车管理</a></li>
				<li><a href="<%=request.getContextPath() %>/order/order.action">订单管理</a></li>
				<li><a href="<%=request.getContextPath() %>/jsp/customWordList.jsp">顾客留言</a></li>
				<li><a href="<%=request.getContextPath() %>/jsp/memberUpdate.jsp">修改注册资料</a></li>
			</ul>
		</div>
	</div>
</body>
</html>