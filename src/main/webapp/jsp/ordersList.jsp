<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/ordersList.css">
<script type="text/javascript">
	function watchOrder(oid,cid) {
		location.href='${pageContext.request.contextPath}/order/watchOrder.action?cid='+cid+'&oid='+oid;
	}
	
	
function deleteOrder(id) {
	if(confirm("是否删除订单？")){
		location.href='${pageContext.request.contextPath}/order/deleteOrder.action?id='+id;
		}
	}
</script>
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>


		<div id="main">
			<div class="ordersLogo">
				<img alt="" src="../images/icon_order.gif">
			</div>
			<div class="ordersListContent">
				<table>
					<tr class="table_th_bg">
						<th>订单编号</th>
						<th>金额</th>
						<th>下单日期</th>
						<th>订单状态</th>
						<th>编辑</th>
					</tr>
					<z:forEach items="${olist}" var="olist">
						<tr>
							<td>${olist.orderno }</td>
							<td class="font_red">￥${olist.money }</td>
							<td>${olist.orderdate }</td>

							<z:if test="${olist.orderstatus eq 1}">
								<td>已下单，未处理</td>
							</z:if>
							<z:if test="${olist.orderstatus eq 2}">
								<td>已处理，未发货</td>
							</z:if>
							<z:if test="${olist.orderstatus eq 3}">
								<td>已发货，未签收</td>
							</z:if>
							<z:if test="${olist.orderstatus eq 4}">
								<td>已签收，未评价</td>
							</z:if>
							<z:if test="${olist.orderstatus eq 5}">
								<td>已评价</td>
							</z:if>
							<td><a href="#"
								onclick="watchOrder(${olist.id },${olist.cart })">查看订单</a> <a
								href="#" class="font_red" onclick="deleteOrder(${olist.id })">删除订单</a>
							</td>
						</tr>
					</z:forEach>
				</table>
			</div>
		</div>


		<div id="footer">
			<div class="footerCopyDiv">版权所有：张源</div>
		</div>
	</div>
</body>
</html>