<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/index/index.action',
			type : 'post',
			dataType : 'json',
			success : function(d) {
				$("#a1").text(d[0].catename);
				$("#a2").text(d[1].catename);
				$("#a3").text(d[2].catename);
				$("#a4").text(d[3].catename);
				$("#a5").text(d[4].catename);
			}
		});
	})
	$(function() {
		
		$.ajax({
			url : '${pageContext.request.contextPath}/index/mer.action',
			type : 'post',
			dataType : 'json',
			success : function(d) {
				$("#id1").attr('value', d[0].id);
				$("#img1").attr('src', d[0].picture);
				$("#mer_a1").text(d[0].mername);
				$("#mer_a2").text("市场价：￥" + d[0].price);
				$("#mer_a3").text("折扣价：￥" + d[0].sprice);
				$("#id2").attr('value', d[1].id);
				$("#img2").attr('src', d[1].picture);
				$("#mer_b1").text(d[1].mername);
				$("#mer_b2").text("市场价：￥" + d[1].price);
				$("#mer_b3").text("折扣价：￥" + d[1].sprice);
				$("#id3").attr('value', d[2].id);
				$("#img3").attr('src', d[2].picture);
				$("#mer_c1").text(d[2].mername);
				$("#mer_c2").text("市场价：￥" + d[2].price);
				$("#mer_c3").text("折扣价：￥" + d[2].sprice);
				$("#id4").attr('value', d[3].id);
				$("#img4").attr('src', d[3].picture);
				$("#mer_d1").text(d[3].mername);
				$("#mer_d2").text("市场价：￥" + d[3].price);
				$("#mer_d3").text("折扣价：无");
				$("#id5").attr('value', d[4].id);
				$("#img5").attr('src', d[4].picture);
				$("#mer_e1").text(d[4].mername);
				$("#mer_e2").text("市场价：￥" + d[4].price);
				$("#mer_e3").text("折扣价：无");
				$("#id6").attr('value', d[5].id);
				$("#img6").attr('src', d[5].picture);
				$("#mer_f1").text(d[5].mername);
				$("#mer_f2").text("市场价：￥" + d[5].price);
				$("#mer_f3").text("折扣价：无");

			}
		});
	})

	
	
	function findMerById(id) {
		location.href='${pageContext.request.contextPath}/index/details.action?id='
			+ id;
	}
	
	
	function findMore(s) {
		location.href='${pageContext.request.contextPath}/index/more.action?special='
			+ s;
	}
	
	
	function doLogin() {
		 var loginName = $("#loginName").val();
		 var loginPwd = $("#loginPwd").val();
		 if(loginName==''||loginPwd==''||loginName==null||loginPwd==null)
			 alert("请重新输入账号与密码");
		 location.href='${pageContext.request.contextPath}/login/doLogin.action?loginname='+loginName+'&loginpwd='
				+ loginPwd;
	}
	
	function userQuit() {
		 location.href='${pageContext.request.contextPath}/login/doLogout.action';
	}
	
	function insertCart(id) {
		
		 location.href='${pageContext.request.contextPath}/cart/insertCart.action?id='+id;
		
	}
	
	function register() {
		location.href='${pageContext.request.contextPath}/jsp/memberRegister.jsp';
	}
</script>
</head>
<body>
	<div id="box">
		<jsp:include page="comm/header.jsp"></jsp:include>


		<div id="main">
			<div class="leftAreaDiv">
				<div class="loginDiv">
					<z:if test="${member eq null}" >
					<h4>会员登录</h4>
					<div class="loginInfo">
						<span>登录账号：</span> <input type="text" name="loginName"  id="loginName">
					</div>
					<div class="loginPwdInfo">
						<span>登录密码：</span> <input type="password" name="loginPwd" id="loginPwd"> 
					</div>
					<div class="operatorButton">
						<button class="registerButton" onclick="register()">注册</button>
						<button class="loginButton" onclick="doLogin()">登录</button>
					</div>
					<p style="text-align: center;color: red">${msg }</p>
					</z:if>
					<z:if test="${member ne null}" >
					<h4>会员信息</h4>
					<div class="loginInfo">
						<span>登录账号：${member.membername }</span>
					</div>
					<div class="loginPwdInfo">
						<span>会员级别：${member.ml.levelname }</span> 
					</div>
					<div class="operatorButton">
						<button class="registerButton" onclick="userQuit()">安全退出</button>
					</div>
					</z:if>
					
				</div>

				<div class="cateDiv">
					<h4>商品类别</h4>
					<ul>
						<li><a id="a1" href="#"></a></li>
						<li><a id="a2" href="#"></a></li>
						<li><a id="a3" href="#"></a></li>
						<li><a id="a4" href="#"></a></li>
						<li><a id="a5" href="#"></a></li>
					</ul>
				</div>
			</div>




			<div class="rightAreaDiv">
				<!-- 上部分部分特价设计 -->
				<div class="merAreaDiv">
					<div class="areaLogo">
						<img alt="" src="images/Icon_TeJia.gif" class="leftLogo"> <img
							alt="" src="images/icon_more.gif" class="moreLogo" onclick="findMore(1)">
					</div>
					<div class="div_hr"></div>
					<div class="merList">
						<!-- 第一本书 -->
						<div class="mer">
							<input type="hidden" id="id1" value="" />
							<div class="merImg">
								<img id="img1" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_a1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_a2"></span>
							</div>
							<div class="sprice">
								<span id="mer_a3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif" onclick="findMerById($('#id1').val())">
								<img alt="" src="images/icon_buy.gif" onclick="insertCart($('#id1').val())">
							</div>
						</div>
						<!-- 第二本书 -->
						<div class="mer">
							<input type="hidden" id="id2" value="" />
							<div class="merImg">
								<img id="img2" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_b1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_b2"></span>
							</div>
							<div class="sprice">
								<span id="mer_b3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif"  onclick="findMerById($('#id2').val())"> <img alt=""
									src="images/icon_buy.gif" onclick="insertCart($('#id2').val())">
							</div>
						</div>
						<!-- 第三本书 -->
						<div class="mer">
							<input type="hidden" id="id3" value="" />
							<div class="merImg">
								<img id="img3" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_c1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_c2"></span>
							</div>
							<div class="sprice">
								<span id="mer_c3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif"  onclick="findMerById($('#id3').val())"> <img alt=""
									src="images/icon_buy.gif" onclick="insertCart($('#id3').val())">
							</div>
						</div>

					</div>
				</div>

				<!-- 下部分新品设计 -->
				<div class="merAreaDiv">
					<div class="areaLogo">
						<img alt="" src="images/NewGoods_03.gif" class="leftLogo"> <img
							alt="" src="images/icon_more.gif" class="moreLogo" onclick="findMore(0)">
					</div>
					<div class="div_hr"></div>
					<div class="merList">
						<!-- 第一本书 -->
						<div class="mer">
							<input type="hidden" id="id4" value="" />
							<div class="merImg">
								<img id="img4" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_d1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_d2"></span>
							</div>
							<div class="sprice">
								<span id="mer_d3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif "  onclick="findMerById($('#id4').val())"> <img alt=""
									src="images/icon_buy.gif" onclick="insertCart($('#id4').val())">
							</div>
						</div>
						<!-- 第二本书 -->
						<div class="mer">
							<input type="hidden" id="id5" value="" />
							<div class="merImg">
								<img id="img5" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_e1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_e2"></span>
							</div>
							<div class="sprice">
								<span id="mer_e3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif"  onclick="findMerById($('#id5').val())"> <img alt=""
									src="images/icon_buy.gif" onclick="insertCart($('#id5').val())">
							</div>
						</div>
						<!-- 第三本书 -->
						<div class="mer">
							<input type="hidden" id="id6" value="" />
							<div class="merImg">
								<img id="img6" alt="" src="">
							</div>
							<div class="merName">
								<a id="mer_f1" href="#" class="font_red"></a>
							</div>
							<div class="price">
								<span id="mer_f2"></span>
							</div>
							<div class="sprice">
								<span id="mer_f3"></span>
							</div>
							<div class="operatorButton">
								<img alt="" src="images/icon_car.gif"  onclick="findMerById($('#id6').val())"> <img alt=""
									src="images/icon_buy.gif" onclick="insertCart($('#id6').val())">
							</div>
						</div>

					</div>
				</div>



			</div>
		</div>


		<jsp:include page="comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>