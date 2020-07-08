<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/customWordList.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>
		
		
		<div id="main">
			<div class="customWordListLogo">
				<img alt="" src="../images/icon_liuyan.gif">
			</div>
			<div class="customWordListContent">
				<table class="customWordListTable">
					<tr class="table_th_bg tr1">
						<th class="th1">留言标题：好评</th>
						<th class="th2">顾客姓名：张源</th>
						<th class="th2">留言时间：2020-07-02 19:13:46</th>
					</tr>
					<tr>
						<td colspan="3">非常好的购物体验</td>
					</tr>
				</table>
			
				<table class="customWordListTable">
					
					<tr class="table_th_bg">
						<th colspan="3"  class="th1">管理员回复：</th>
					</tr>
					<tr>
						<td colspan="3">谢谢惠顾，祝您购物愉快</td>
					</tr>
				</table>
				
				<div class="WordListLogo">
					<img alt="" src="../images/icon_LeaveWord.gif">
				</div>
				<table class="contextTable">
					<tr>
						<th class="th1">留言标题：</th>
						<th class="th2">
							<textarea cols="100" rows="">标题</textarea>
						</th>
					</tr>
					<tr>
						<th class="th1">留言内容：</th>
						<th class="th2">
							<textarea cols="100" rows="">内容</textarea>
						</th>
					</tr>
					
				</table>
				<div class="fileDiv">
						<button>保存</button>
				</div>
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