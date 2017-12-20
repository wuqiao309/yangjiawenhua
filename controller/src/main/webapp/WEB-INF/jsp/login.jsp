<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="0base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login</title>
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header"
				style="text-align: center">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h1>
						<b>阳夏图书管理系统</b>
					</h1>
					<br>
					<h3>用户登录</h3>
					<form action="/1/11/login" name="index.jsp" method="post" id="login_main">
						<div class="input_outer">
							<span class="u_user"></span> <input name="username" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="请输入账户" id="userName">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input name="password" class="text"
								style="color: #FFFFFF !important" type="password"
								placeholder="请输入密码">
						</div>
						<div class="mb2">
							<input type="submit" class="act-but submit"
								style="color: #FFFFFF; width: 100%" value="登陆">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
	<script type="text/JavaScript">
		<c:if test="${!empty msg}">
			window.onload=function(){
				msg = "${msg}"
				alert(msg);
			}
		</c:if>
	</script>
	<div style="text-align:center;">
</div>
	</body>
</html>