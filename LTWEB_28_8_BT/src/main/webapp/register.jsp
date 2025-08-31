<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Ký Tài Khoản</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        
        .register-container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 450px;
            overflow: hidden;
        }
        
        .register-header {
            background: #4a6bdf;
            color: white;
            padding: 25px;
            text-align: center;
        }
        
        .register-header h2 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 5px;
        }
        
        .register-body {
            padding: 25px;
        }
        
        .alert {
            background-color: #ffebee;
            color: #d32f2f;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 20px;
            border-left: 4px solid #d32f2f;
            font-size: 14px;
        }
        
        .input-group {
            margin-bottom: 20px;
            position: relative;
        }
        
        .input-group-addon {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 45px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f5f5f5;
            border-radius: 6px 0 0 6px;
            color: #555;
            z-index: 1;
        }
        
        .form-control {
            width: 100%;
            padding: 14px 14px 14px 50px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 16px;
            transition: all 0.3s;
        }
        
        .form-control:focus {
            border-color: #4a6bdf;
            outline: none;
            box-shadow: 0 0 0 3px rgba(74, 107, 223, 0.2);
        }
        
        .btn-register {
            background: #4a6bdf;
            color: white;
            border: none;
            padding: 14px;
            width: 100%;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }
        
        .btn-register:hover {
            background: #3a5bd0;
        }
        
        .login-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
        
        .login-link a {
            color: #4a6bdf;
            text-decoration: none;
            font-weight: 600;
        }
        
        .login-link a:hover {
            text-decoration: underline;
        }
        
        .form-divider {
            display: flex;
            align-items: center;
            margin: 20px 0;
            color: #777;
        }
        
        .form-divider::before,
        .form-divider::after {
            content: "";
            flex: 1;
            height: 1px;
            background: #e0e0e0;
        }
        
        .form-divider span {
            padding: 0 15px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-header">
            <h2>Tạo tài khoản mới</h2>
        </div>
        
        <div class="register-body">
            <c:if test="${not empty alert}">
                <div class="alert">
                    <i class="fas fa-exclamation-circle"></i> ${alert}
                </div>
            </c:if>
            
            <form action="<%=path%>/register" method="post">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-user"></i></span>
                    <input type="text" placeholder="Tài khoản" name="username" class="form-control" required>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-lock"></i></span>
                    <input type="password" placeholder="Mật khẩu" name="password" class="form-control" required>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-envelope"></i></span>
                    <input type="email" placeholder="Email" name="email" class="form-control" required>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-user-circle"></i></span>
                    <input type="text" placeholder="Họ và tên" name="fullname" class="form-control" required>
                </div>
                
                <div class="input-group">
                    <span class="input-group-addon"><i class="fas fa-phone"></i></span>
                    <input type="tel" placeholder="Số điện thoại" name="phone" class="form-control" required>
                </div>
                
                <button type="submit" class="btn-register">
                    <i class="fas fa-user-plus"></i> Tạo tài khoản
                </button>
            </form>
            
            <div class="form-divider">
                <span>Hoặc</span>
            </div>
            
            <div class="login-link">
                <p>Nếu bạn đã có tài khoản? <a href="<%=path%>/login">Đăng nhập</a></p>
            </div>
        </div>
    </div>
</body>
</html>