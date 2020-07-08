<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/cart.css">
<link rel="stylesheet" type="text/css" href="../css/cartList.css">
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	function delCart(id) {
		if(confirm("是否删除该商品？")){
		location.href='${pageContext.request.contextPath}/cart/delCart.action?id='+id;
	}
}
	
	function clearCart() {
		if(confirm("是否清空购物车？")){
			location.href='${pageContext.request.contextPath}/cart/clearCart.action';
		}
	}
	
	function shop() {
		location.href='${pageContext.request.contextPath}';
	}
	
	function next() {
		location.href='${pageContext.request.contextPath}/cart/next.action';
	}
</script>
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>


		<div id="main">
			<div class="cartLogo">
				<img alt="" src="../images/Car_icon_04.gif">
			</div>
			<div class="cartStatusImgDiv">
				<img alt="" src="../images/Car_07.gif"> <span
					class="activeSpanBackground">查看购物车物品</span> <img alt=""
					src="../images/Car_15.gif" class="hrImg"> <img alt=""
					src="../images/Car_09.gif"> <span
					class="disabledSpanBackground">确认订单信息</span> <img alt=""
					src="../images/Car_15.gif" class="hrImg"> <img alt=""
					src="../images/Car_11.gif"> <span
					class="disabledSpanBackground">订单提交成功</span> <img alt=""
					src="../images/Car_15.gif" class="hrImg">
			</div>

			<div class="cartContent">
				<table class="cartTable">
					<tr class="tr1 table_th_bg">
						<th>商品名称</th>
						<th>市场价</th>
						<th>折扣价</th>
						<th>数量</th>
						<th>金额</th>
						<th>删除</th>
					</tr>
					<z:forEach items="${merCart}" var="mer">
						<tr>
							<td><a href="#" class="font_red">${mer.mername }</a></td>
							<td>￥${mer.mprice }</td>
							<td>￥${mer.price }</td>
							<td><input value="${mer.number }" name="number"></td>
							<td>￥${mer.money }</td>
							<td><img alt="" src="../images/delete_01.gif"
								onclick="delCart(${mer.id })"></td>
						</tr>
					</z:forEach>

					<tr class="totalInfo table_th_bg">
						<td colspan="6"><img alt="" src="../images/me03.gif"> <span>总金额：￥${cart.money }（不包含配送费用）</span>
						</td>
					</tr>
					<tr>
						<td colspan="6" class="operatorButton"><img alt=""
							src="../images/Car_icon_01.gif" onclick="clearCart()"> <img alt=""
							src="../images/Car_icon_02.gif" onclick="shop()"> <img alt=""
							src="../images/Car_icon_03.gif" onclick="next()"></td>
					</tr>
				</table>

			</div>
		</div>


		<div id="footer">
			<div class="footerCopyDiv">版权所有：张源</div>
		</div>
	</div>
</body>
</html>