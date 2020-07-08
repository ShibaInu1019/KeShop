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
<link rel="stylesheet" type="text/css" href="../css/cartConfirm.css">

<script type="text/javascript">
function submit() {
	 location.href='${pageContext.request.contextPath}/cart/submit.action';
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
				<img alt="" src="../images/Car_07.gif">
				<span class="disabledSpanBackground">查看购物车物品</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
				
				<img alt="" src="../images/Car_09.gif">
				<span class="activeSpanBackground">确认订单信息</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
				
				<img alt="" src="../images/Car_11.gif">
				<span class="disabledSpanBackground">订单提交成功</span>
				<img alt="" src="../images/Car_15.gif" class="hrImg">
			</div>
			
			<div class="cartContent">
				<table class="cartTable">
					<tr class="table_th_bg">
						<td class="leftTD">会员级别：</td>
						<td>${member.ml.levelname }</td>
					</tr>
					<tr class="table_th_bg">
						<td class="leftTD">会员优惠：</td>
						<td>${member.ml.favourable }折
						</td>
					</tr>
					<tr class="table_th_bg">
						<td class="leftTD">收件人姓名：</td>
						<td>
							<input type="text" name="memberName" value="${member.membername }">
						</td>
					</tr>
					<tr class="table_th_bg">
						<td class="leftTD">收货人联系电话：</td>
						<td>
							<input type="text" name="phone" value="${member.phone }">
						</td>
					</tr>
					<tr class="table_th_bg">
						<td class="leftTD">收货人邮编：</td>
						<td>
							<input type="text" name="zip" value="${member.zip }">
						</td>
					</tr>
					<tr class="table_th_bg">
						<td class="leftTD">收货人详细地址：</td>
						<td>
							<input type="text" name="address" value="${member.address }">
						</td>
					</tr>
					<tr>
						<td colspan="2" class="operatorButton">
							<img alt="" src="../images/Car_icon_back.gif" onclick="javascript:history.back(-1);">
							<img alt="" src="../images/Car_icon_06.gif" onclick="submit()">
						</td>
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