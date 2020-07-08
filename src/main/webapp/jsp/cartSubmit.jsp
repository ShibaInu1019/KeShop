<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/cart.css">
<link rel="stylesheet" type="text/css" href="../css/cartSubmit.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>
		
		
		<div id="main">
			<div class="cartLogo">
				<img alt="" src="../images/Car_icon_04.gif">
			</div>
			<div class="cartStatusImgDiv">
				<img alt="" src="../images/Car_07.gif">
				<span class="disabledSpanBackground">查看购物车物品</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
				
				<img alt="" src="../images/Car_09.gif">
				<span class="disabledSpanBackground">确认订单信息</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
				
				<img alt="" src="../images/Car_11.gif">
				<span class="activeSpanBackground">订单提交成功</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
			</div>
			
			<div class="cartContent">
				<table class="cartTable">
					<tr>
						<td rowspan="4" class="duiHao">
							<img alt="" src="../images/Car_icon_10.gif">
						</td>
						<td>恭喜您，订单提交成功</td>
					</tr>
					<tr>
						
						<td>订单编号：${order.orderno }</td>
					</tr>
					<tr>
						
						<td>总金额：￥${money }</td>
					</tr>
					<tr>
						
						<td>下单日期：${order.orderdate}</td>
					</tr>
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