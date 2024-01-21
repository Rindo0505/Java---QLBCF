<%@page import="java.util.ArrayList"%>
<%@page import="bean.HoaDon"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE</title>
<!-- Tell the browser to be rehdonsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="icon"
	href="https://www.highlandscoffee.com.vn/vnt_upload/File/Image/icon_webiste-01.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&dihdlay=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/ionicons.min.css">

<!-- Theme style -->
<!-- <link rel="stylesheet" href="./view/style.css"> -->
<link rel="stylesheet" href="AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
      folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="_all-skins.min.css">



<!-- HTML5 Shim and Rehdond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Rehdond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/rehdond/1.4.2/rehdond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.main-nav {
	font-size: 17px;
}

.sub-nav {
	font-size: 15px !important;
}

.sub-active {
	color: white !important;
}

.header__manage {
	font-size: 30px;
	margin-left: 20px;
}

/* Navbar */
.navbar {
	list-style: none;
	padding-left: 0;
	display: flex;
	flex-direction: row-reverse;
	padding-right: 20px;
}

.navbar-item {
	margin: 10px 8px;
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

.box {
	margin-bottom: 0;
}
/* Nav */
.nav__icon {
	margin-right: 4px;
}

/* Main content */
.content-wrapper {
	background-color: #f5f5f5;
}

.main__content {
	width: 100%;
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

.payment__detail {
	display: flex;
	font-size: 1.6rem;
	font-weight: 500;
	margin-bottom: 10px;
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
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="
      " class="logo"> <!-- logo for regular state and mobile devices -->
				<hdan class="logo-lg"> <b>Admin</b>LTE</hdan>
			</a>
			<!-- Header Navbar: style can be found in header.less -->


			<% String tendn = (String)session.getAttribute("tendn"); %>

			<ul class="navbar">

				<li class="navbar-item navbar-user"><i
					class="navbar-user-img fa-solid fa-user"></i> <span
					class="navbar-user-name"><%= tendn%></span>

					<ul class="navbar-user-menu">
						<li class="navbar-user-item"><a href="">Tài khoản của tôi</a>
						</li>
						<li class="navbar-user-item"><a href="">Đổi mật khẩu</a></li>
						<li class="navbar-user-item navbar-user-item--separate"><a
							href="DangXuatController">Đăng xuất</a></li>
					</ul></li>
				<li class="navbar-item navbar-item--has-notify"><a href=""
					class="navbar-item-link"> <i
						class="navbar-icon fa-solid fa-bell"></i> Thông báo
				</a></li>
			</ul>


		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview"><a href="GiaoDienChinh_admin"> <i
							class="fa fa-dashboard"></i> <span class="main-nav">Trang
								chủ</span>
					</a></li>

					<li class="treeview active"><a href="#"> <i
							class="fa fa-folder"></i> <span class="main-nav">Quản lý
								danh mục</span>
					</a>
						<ul class="treeview-menu">

							<li><a class="sub-nav" href="quanLyTaiKhoanController_admin?tdnadmin=<%=tendn%>">
									Tài khoản </a></li>
							<li><a class="sub-nav" href="quanLyChucVuController_admin">
									Chức vụ</a></li>
							<li><a class="sub-nav "
								href="quanLyNhanVienController_admin"> Nhân viên</a></li>
							<li><a class="sub-nav" href="quanLyHoaDonController_admin">
									Hóa đơn</a></li>
							<li><a class="sub-nav" href="quanLySanPhamController_admin">
									Sản phẩm</a></li>
							<li><a class="sub-nav"
								href="quanLyLoaiSanPhamController_admin"> Loại sản phẩm</a></li>
						</ul>
				</ul>

				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview active"><a href="#"> <i
							class="nav__icon fa-solid fa-chart-simple"></i> <hdan
								class="main-nav">Thống kê</hdan>
					</a>
						<ul class="treeview-menu">
							<li><a class="sub-nav sub-active" href="thongKeDoanhThuController_admin">Doanh
									thu</a></li>
							<li><a class="sub-nav" href="thongKeHoaDonController_admin">Hóa đơn</a></li>
						</ul></li>
				</ul>
			</section>

			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="header__manage">Thống kê doanh thu</div>
			<div class="box box-primary"></div>

			<!-- Main content -->
			<div class="main__content">
				<%
				ArrayList<Integer> dsdt = (ArrayList<Integer>) request.getAttribute("dsdt");
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


				</div>

			</div>

		</div>
</body>
</html>
