<%@page import="java.util.ArrayList"%>
<%@page import="bean.HoaDon"%>

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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<style>
* {
	box-sizing: inherit;
}

html {
	font-size: 62.5%;
	line-height: 1.6rem;
	font-family: "Roboto", sans-serif;
	box-sizing: border-box;
}

.app {
	overflow-x: hidden;
	background-color: #f5f5f5;
}

/* Header */
.header {
	background-color: #b22830;
	padding: 14px 0px 12px;
	display: flex;
}

.logo {
	max-width: 96px;
	margin-left: 40px;
}

.logo__img {
	border: 0px;
	max-width: 100%;
}

/* Tabs */
.tabs {
	display: flex;
	position: relative;
	margin-left: 50px;
}

.tabs .line {
	position: absolute;
	left: 0;
	bottom: 7px;
	width: 0;
	height: 4px;
	border-radius: 15px;
	background-color: white;
	transition: all 0.2s ease;
}

.tab-item:hover {
	cursor: pointer;
	color: rgba(255, 255, 255, 0.7);
}

.tab-item {
	min-width: 80px;
	padding: 16px 14px 11px 14px;
	font-size: 1.8rem;
	text-align: center;
	color: white;
	background-color: #b22830;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom: 5px solid transparent;
	cursor: pointer;
	transition: all 0.5s ease;
	list-style: none;
}

.tab-icon {
	font-size: 24px;
	width: 32px;
	position: relative;
	top: 2px;
}

.tab-item:hover {
	opacity: 1;
	background-color: rgba(194, 53, 100, 0.05);
	border-color: rgba(194, 53, 100, 0.1);
}

.tab-item.active {
	opacity: 1;
}

/* Navbar */
.navbar {
	list-style: none;
	padding-left: 0;
	display: flex;
	margin: 0 20px 12px auto;
}

.navbar-item {
	margin: 0 8px;
	position: relative;
	min-height: 26px;
}

.navbar-user {
	display: flex;
	justify-items: center;
	position: relative;
}

.navbar-user-img {
	width: 22px;
	height: 22px;
	border-radius: 50%;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.navbar-user-name {
	font-size: 1.8rem;
}

.navbar-user:hover .navbar-user-menu {
	display: block;
}

.navbar-user-menu {
	position: absolute;
	z-index: 2;
	padding: 4px 0;
	top: calc(100% + 6px);
	right: 0;
	width: 160px;
	border-radius: 2px;
	background-color: white;
	list-style: none;
	box-shadow: 0 1px 2px #e0e0e0;
	display: none;
}

.navbar-user-menu:before {
	content: "";
	border-width: 17px 20px;
	border-style: solid;
	border-color: transparent transparent white transparent;
	position: absolute;
	right: 0px;
	top: -26px;
	z-index: -1;
}

.navbar-user-menu::after {
	content: "";
	display: block;
	position: absolute;
	top: -8px;
	right: 0;
	width: 60%;
	height: 8px;
}

.navbar-user-item--separate {
	border-top: 1px solid rgba(0, 0, 0, 0.05);
}

.navbar-user-item a {
	text-decoration: none;
	color: black;
	font-size: 1.6rem;
	padding: 6px 16px;
	display: block;
}

.navbar-user-item a:hover {
	color: gray;
	font-weight: 480;
}

.navbar-user-item a:first-child {
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
}

.navbar-user-item a:last-child {
	border-bottom-left-radius: 2px;
	border-bottom-right-radius: 2px;
}

.navbar-item, .navbar-item-link {
	display: inline-block;
	font-size: 1.8rem;
	color: white;
	text-decoration: none;
}

.navbar-item:hover, .navbar-icon-link:hover, .navbar-item-link:hover {
	cursor: pointer;
	color: rgba(255, 255, 255, 0.7);
}

/* Container */
.wrapper {
	width: 100%;
	background-color: #f5f5f5;
}

.content {
	margin-top: 40px;
	margin-left: 40px;
}

.statisctics {
	font-size: 2.4rem;
	font-weight: 600;
	text-align: center;
	margin-bottom: 20px;
}

.table {
	margin-top: 30px;
}

.table tr:nth-child(1) {
	background-color: #6ab7ed;
}

.table th, .table td {
	padding: 10px 40px;
	border: 1px solid #ccc;
}

.order__detail {
	width: 70%;
	padding-top: 50px;
	margin: auto;
}

.order__table {
	width: 100%;
	font-size: 1.6rem;
	background-color: white;
}

.order__table td, .order__table th {
	border: 1px solid #ddd;
	padding: 8px;
}

.order__table th {
	padding: 12px 0;
	text-align: left;
	background-color: #4897ff;
	color: white;
	text-align: center;
}

.revenue {
	font-size: 2rem;
	font-weight: 600;
	margin-top: 20px;
	margin-bottom: 60px;
}

</style>
<body>
	<div class="app">
		<div class="header">
			<div class="logo">
				<img class="logo__img"
					src="https://www.highlandscoffee.com.vn/vnt_upload/weblink/White_logo800.png"
					alt="tiktok" />
			</div>

			<!-- Tab items -->
			<ul class="tabs">
				<li class="tab-item"><a class="nav-link"
					href="hienThiMenuController"><i
						class="tab-icon fa-solid fa-cash-register"></i> Bán hàng</a></li>
				<li class="tab-item"><a class="nav-link"
					href="quanLyHDController_nhanvien"><i
						class="tab-icon fa-solid fa-file-invoice"></i> Quản lý hóa đơn</a></li>
				<li class="tab-item active"><a class="nav-link"
					href="thongKeController_nhanvien"><i
						class="tab-icon fa-solid fa-chart-simple"></i> Thống kê</a></li>
						
				<li class="tab-item"><a class="nav-link"
					href="LSBHController"><i
						class="tab-icon fa-solid fa-chart-simple"></i> Lịch Sử Bán Hàng</a></li>
						
				<div class="line"></div>
			</ul>

			<%
			String tendn = (String) session.getAttribute("tendn");
			%>

			<ul class="navbar">
				<li class="navbar-item navbar-item--has-notify"><a href=""
					class="navbar-item-link"> <i
						class="navbar-icon fa-solid fa-bell"></i> Thông báo
				</a></li>
				<li class="navbar-item navbar-user"><i
					class="navbar-user-img fa-solid fa-user"></i> <span
					class="navbar-user-name"><%=tendn%></span>

					<ul class="navbar-user-menu">
						<li class="navbar-user-item"><a href="">Tài khoản của tôi</a>
						</li>
						<li class="navbar-user-item"><a href="">Đổi mật khẩu</a></li>
						<li class="navbar-user-item navbar-user-item--separate"><a
							href="DangXuatController">Đăng xuất</a></li>
					</ul></li>
			</ul>
		</div>

		<div class="wrapper">

			<%
			ArrayList<Integer> dsdt = (ArrayList<Integer>) request.getAttribute("dsdt");
			ArrayList<Integer> dshd = (ArrayList<Integer>) request.getAttribute("dshd");
			%>
			<div class="order__detail">
				<div class="statisctics">*** THỐNG KÊ DOANH THU ***</div>
				<table class="order__table">
					<tr>
						<th>STT</th>
						<th>Tháng</th>
						<th>Doanh thu</th>

					</tr>

					<%
					int tongdt = 0;
					for (int i = 0; i < dsdt.size(); ++i) {
						int dt = dsdt.get(i);
						tongdt += dt;
						int stt = i;
						stt++;
					%>
					<tr>
						<td class="text-center"><%=stt%></td>
						<td class="text-center"><%=stt%></td>
						<td class="text-center"><%=dt%> VNĐ</td>
					</tr>
					<%
					}
					%>

				</table>
				<div class="revenue">
					Tổng doanh thu:
					<%=tongdt%>
					VNĐ
				</div>

				<div class="statisctics">*** THỐNG KÊ HÓA ĐƠN ***</div>
				<table class="order__table">
					<tr>
						<th>STT</th>
						<th>Tháng</th>
						<th>Số hóa đơn</th>

					</tr>

					<%
					int tonghd = 0;
					for (int i = 0; i < dshd.size(); ++i) {
						int hd = dshd.get(i);
						tonghd += hd;
						int stt = i;
						stt++;
					%>
					<tr>
						<td class="text-center"><%=stt%></td>
						<td class="text-center"><%=stt%></td>
						<td class="text-center"><%=hd%></td>
					</tr>
					<%
					}
					%>

				</table>
				<div class="revenue">
					Tổng số hóa đơn được lập:
					<%=tonghd%>
				</div>
			</div>
		</div>
	</div>
	</div>

	<script>
		const $ = document.querySelector.bind(document);
		const $$ = document.querySelectorAll.bind(document);

		const itemActive = $(".tab-item.active");
		const line = $(".tabs .line");

		line.style.left = itemActive.offsetLeft + "px";
		line.style.width = itemActive.offsetWidth + "px";
	</script>
</body>
</html>
