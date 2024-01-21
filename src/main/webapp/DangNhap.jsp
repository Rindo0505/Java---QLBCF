<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Highlands Coffee</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon"
	href="https://www.highlandscoffee.com.vn/vnt_upload/File/Image/icon_webiste-01.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon"
	href="https://www.highlandscoffee.com.vn/vnt_upload/File/Image/icon_webiste-01.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet" />
<style>
* {
	box-sizing: inherit;
	margin: 0;
}

html {
	font-size: 62.5%;
	line-height: 1.6rem;
	font-family: "Roboto", sans-serif;
	box-sizing: border-box;
}

.app {
	overflow: hidden;
	overflow-x: hidden;
	background-image: linear-gradient(0, #b22830, white);
	/* background-image:
		url("https://www.highlandscoffee.com.vn/vnt_upload/news/07_2019/HCO-Tin_tuYYc-BANNER-NEWS-740X314.jpg"); */
	/* 	background-size: 476px 251px; */
	background-size: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
}

.auth-form {
	margin: auto;
	width: 500px;
	background-color: #fff;
	border-radius: 10px;
	overflow: hidden;
	border: 3px solid #ee4d2d;
	box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
}

.auth-form__container {
	padding: 0 32px;
}

.auth-form__header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 12px;
	margin-top: 30px;
}

.auth-form__heading {
	font-size: 2.2rem;
	font-weight: 400;
	color: #333;
}

.auth-form__switch-btn {
	font-size: 1.6rem;
	font-weight: 400;
	color: #ee4d2d;
	cursor: pointer;
}

.auth-form__input {
	width: 100%;
	height: 40px;
	margin-top: 16px;
	padding: 0 12px;
	font-size: 1.4rem;
	border-radius: 2px;
	border: 1px solid #dbdbdb;
	outline: none;
}

.auth-form__input:focus {
	border-color: #888;
}

.auth-form__aside {
	margin-top: 18px;
}

.auth-form__policy-text {
	font-size: 1.2rem;
	line-height: 1.8rem;
	text-align: center;
	padding: 0 12px;
}

.auth-form__text-link {
	color: #ee4d2d;
	text-decoration: none;
}

.auth-form__controls {
	margin-top: 70px;
	display: flex;
	justify-content: center;
}

.auth-form__controls-back {
	margin-right: 8px;
}

.auth-form__socials {
	background-color: #f5f5f5;
	padding: 16px 36px;
	display: flex;
	justify-content: space-between;
	margin-top: 22px;
}

.auth-form__socials-icon {
	font-size: 1.8rem;
}

.auth-form__socials--facebook {
	background-color: #3a5a98;
	color: #fff;
}

.auth-form__socials--facebook .auth-form__socials-icon {
	color: #fff;
}

.auth-form__socials-title {
	margin: 0 36px;
}

.auth-form__socials--google {
	background-color: #fff;
	color: #666;
}

.auth-form__help {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.auth-form__help-link {
	text-decoration: none;
	font-size: 1.4rem;
	color: #939393;
}

.auth-form__help-separate {
	display: block;
	height: 22px;
	margin: 0 16px;
	border-left: 1px solid #eaeaea;
}

.auth-form__help-forgot {
	color: #ee4d2d;
}

.btn {
	min-width: 124px;
	height: 34px;
	text-decoration: none;
	border: none;
	border-radius: 2px;
	font-size: 1.5rem;
	padding: 0 12px;
	outline: none;
	cursor: pointer;
	color: #333;
	background-color: #fff;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	line-height: 1.6rem;
	margin-bottom: 16px;
}

.btn.btn--normal:hover {
	background-color: rgba(0, 0, 0, 0.05);
}

.btn.btn--size-s {
	height: 32px;
	font-size: 12px;
	padding: 0 8px;
}

.btn.btn--primary:hover {
	opacity: 0.7;
}

.btn.btn--primary {
	color: #fff;
	background-color: #ee4d2d;
}
</style>
</head>
<body>
	<div class="app">
		<div class="auth-form">
			<div class="auth-form__container">
				<div class="auth-form__header">
					<h3 class="auth-form__heading">Đăng nhập</h3>
					<span class="auth-form__switch-btn">Đăng ký</span>
				</div>

				<form id="loginForm" action="dangnhapController" method="POST">

					<div class="auth-form__form">
						<div class="auth-form__group">
							<input name="tendn" type="text" class="auth-form__input"
								placeholder="Tên đăng nhập" required>
						</div>
						<div class="auth-form__group">
							<input name="matkhau" type="password" class="auth-form__input"
								placeholder="Mật khẩu" required>
						</div>

					</div>

					<div class="auth-form__aside">
						<div class="auth-form__help">
							<a href="" class="auth-form__help-link auth-form__help-forgot">Quên
								mật khẩu</a> <span class="auth-form__help-separate"></span> <a
								href="" class="auth-form__help-link">Cần trợ giúp?</a>
						</div>
					</div>
					<%
					int check = (request.getAttribute("dnsai") != null) ? Integer.parseInt(request.getAttribute("dnsai").toString()) : 100;
					%>
					<%-- <c:choose>
						<c:when test="${not empty requestScope.dnsai}">
							<c:set var="check"
								value="${not empty requestScope.dnsai ? requestScope.dnsai : 100}" />
						</c:when>
						<c:otherwise>
							<c:set var="check" value="100" />
						</c:otherwise>
					</c:choose> --%>


					<div class="auth-form__controls">
						<button type="submit" class="btn btn--primary"
							onclick="checkLogin(<%=check%>)">ĐĂNG NHẬP</button>

						<!-- onclick="checkLogin(<c:set var="check" "/>ĐĂNG NHẬP</button> -->
					</div>
				</form>

			</div>
		</div>
	</div>

	<script>
	function checkLogin(dnsai){
		if (dnsai == 0) {
			alert("Tên đăng nhập hoặc mật khẩu không hợp lệ!");
		} 
	}
	</script>
</body>
</html>