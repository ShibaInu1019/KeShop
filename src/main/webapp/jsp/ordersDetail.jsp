<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/ordersDetail.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>
		
		
		<div id="main">
			<div class="ordersDetailLogo">
				<img alt="" src="../images/icon_order_view.gif">
			</div>
			<div class="ordersDetailContent">
				<table class="orderInfoTable">
					<tr>
						<td class="leftTD">订单编号：</td>
						<td>${order.orderno}</td>
					</tr>
					<tr>
						<td class="leftTD">金额：</td>
						<td>￥${order.money}</td>
					</tr>
					<tr>
						<td class="leftTD">下单日期：</td>
						<td>${order.orderdate}</td>
					</tr>
					<tr>
						<td class="leftTD">会员级别：</td>
						<td>${member.ml.levelname}</td>
					</tr>
					<tr>
						<td class="leftTD">会员优惠：</td>
						<td>${member.ml.favourable}折</td>
					</tr>
					<tr>
						<td class="leftTD">收货人姓名：</td>
						<td>${member.membername}</td>
					</tr>
					<tr>
						<td class="leftTD">收货人联系电话：</td>
						<td>${member.phone}</td>
					</tr>
					<tr>
						<td class="leftTD">收货人邮编：</td>
						<td>${member.zip}</td>
					</tr>
					<tr>
						<td class="leftTD">收货人详细地址：</td>
						<td>${member.address}</td>
					</tr>
				</table>
				
				<table class="orderDetailTable">
					<caption>订单购物明细表</caption>
					<tr class="table_th_bg">
						<th>商品名称</th>
						<th>市场价</th>
						<th>折扣价</th>
						<th>数量</th>
						<th>金额</th>
					</tr>
					<z:forEach items="${cslist}" var ="cs">
					<tr>
						<td><a href="#" class="font_red">${cs.mername} </a></td>
						<td>￥${cs.mprice} </td>
						<td>￥${cs.price} </td>
						<td>${cs.number} </td>
						<td>￥${cs.money} </td>
					</tr>
					</z:forEach>
				</table>
				<div class="backDiv"><a href="#" class="font_red" onclick="javascript:history.back(-1);">返回</a></div>
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