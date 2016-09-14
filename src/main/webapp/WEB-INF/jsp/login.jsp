<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/square/blue.css">


</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href="index2.html"><b>JHAC</b> MIS</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">用户登录</p>

			<form action="index.html" method="post">
				<div class="form-group has-feedback">
					<input type="text" class="form-control" placeholder="用户名">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" placeholder="密码">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">

					<div class="col-xs-12">
						<button type="submit" class="btn btn-primary btn-block btn-flat">登    录</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<br> <a href="login.html" class="text-center">注册新用户</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery 2.2.0 -->
	<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
</body>
</html>