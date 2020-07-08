<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/noSession.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>


		
			<div id="failInfo">
				<table>
					<tr>
						<td>
							<img alt="" src="<%=request.getContextPath() %>/images/sorry.gif">
						</td>
						<td >
							${msg }
						</td>
					</tr>
				</table>
			</div>
		


		<jsp:include page="../comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>