<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/merchandiseDetail.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>
		
		
		<div id="main">
			<div class="merDetailLogo">
				<img alt="" src="../images/icon_goods.gif">
			</div>
			<div class="merDetailContent"  >
				<img alt="" src="../${merchandise.picture}" width="400px" height="400px" >
				商品类型：${merchandise.category}<br>
				商品名称：${merchandise.mername}<br>
				商品型号：${merchandise.mermodel}<br>
				市场价：${merchandise.price}<br>
				<z:if test="${merchandise.special eq 1}">
					特价：${merchandise.sprice}<br>
				</z:if>
				生产厂家：${merchandise.manufacturer}<br>
				出厂日期：${merchandise.leavefactorydate}<br>
				商品描述：${merchandise.merdesc}<br>
			</div>
			<div class="buyDiv">
				<button></button>
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