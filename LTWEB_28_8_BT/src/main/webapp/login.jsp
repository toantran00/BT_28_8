<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng Nhập</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.login-container {
	background-color: white;
	padding: 20px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	width: 300px;
	border-radius: 8px;
	text-align: center;
}

.login-container h2 {
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.alert {
	color: red;
	margin-bottom: 10px;
}

.input-group {
	display: flex;
	align-items: center;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 5px;
}

.input-group span {
	padding: 10px;
	background-color: #f1f1f1;
	border-radius: 5px 0 0 5px;
}

.input-group input {
	border: none;
	padding: 10px;
	width: 100%;
	border-radius: 0 5px 5px 0;
	outline: none;
}

.input-group input:focus {
	border-color: #4CAF50;
}

.login-button {
	background-color: #47B5ED;
	color: white;
	padding: 12px 20px;
	width: 100%;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.login-button:hover {
	background-color: #45a049;
}

.remember-me {
	margin: 10px 0;
	text-align: left;
}

.register-link {
	text-align: center;
	margin-top: 15px;
}

.register-link a {
	color: #47B5ED;
	text-decoration: none;
}
</style>
</head>
<body>

	<div class="login-container">
		<h2>Đăng Nhập Vào Hệ Thống</h2>

		<c:if test="${alert != null}">
			<h3 class="alert">${alert}</h3>
		</c:if>

		<form action="login" method="post">
			<div class="input-group">
				<span><i class="fa fa-user"></i></span> <input type="text"
					name="username" placeholder="Tài khoản" required>
			</div>

			<div class="input-group">
				<span><i class="fa fa-lock"></i></span> <input type="password"
					name="password" placeholder="Mật khẩu" required>
			</div>

			<div class="remember-me">
				<input type="checkbox" id="rememberMe" name="rememberMe"> <label
					for="rememberMe">Lưu mật khẩu</label>
			</div>

			<button type="submit" class="login-button">Đăng nhập</button>

			<div class="register-link">
				<p>
					Chưa bạn chưa có tài khoản? <a href="#">Đăng ký</a>
				</p>
			</div>
		</form>
	</div>

</body>
</html>