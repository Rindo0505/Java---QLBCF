
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.LoaiSanPham"%>
<%@page import="bean.SanPham"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="icon"
	href="https://www.highlandscoffee.com.vn/vnt_upload/File/Image/icon_webiste-01.png" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
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



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
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

.search-box {
	display: flex;
	justify-content: center;
}

.search {
	width: 360px;
	display: flex;
	justify-content: center;
	align-items: center;
	padding-top: 20px;
}

.search__input {
	height: 40px;
	font-family: inherit;
	font-size: 1.4rem;
	color: inherit;
	background-color: #fff;
	padding: 0.7rem 2rem;
	border-radius: 10rem;
	border: 1.5px solid #dddddd;
	width: 100%;
	transition: all 0.2s;
	margin-right: -6.25rem;
}

.search__input::-webkit-input-placeholder {
	font-weight: 100;
	color: gray;
}

.search__button:hover {
	cursor: pointer;
	opacity: 0.8;
}

.search__button {
	display: block;
	height: 30px;
	width: 60px;
	margin-right: 20px;
	color: white;
	transition: all 0.2s;
	border: none;
	border-radius: 6rem;
	background-color: #f35757;
}

.search__button:active {
	transform: translateY(0.2rem);
}

.search__input:focus {
	outline: none;
}

.search__icon {
	font-size: 1.6rem;
	width: 2rem;
}

.content {
	margin-top: 40px;
	margin-left: 40px;
}

.payment__detail {
	display: flex;
	font-size: 1.6rem;
	font-weight: 500;
	margin-bottom: 10px;
}

.payment__detail label {
	width: 130px;
}

.payment__input {
	display: block;
	margin-left: 10px;
	width: 240px;
}

.payment__input:focus {
	outline: none;
}

/* Button */
.btn__wrapper {
	margin-top: 20px;
}

.btn:hover {
	color: white;
	opacity: 0.8;
}

.btn {
	width: 120px;
	height: 34px;
	text-decoration: none;
	border: none;
	border-radius: 4px;
	font-size: 1.6rem;
	padding: 0 12px;
	outline: none;
	cursor: pointer;
	color: white;
	background-color: #fff;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	line-height: 1.6rem;
}

.btn+.btn {
	margin-left: 20px;
}

.btn__link+.btn__link {
	margin-left: 12px;
}

.btn.btn--save {
	background-color: #2876ec;
}

.btn.btn--edit {
	background-color: #26897b;
}

.btn.btn--print {
	background-color: #f35757;
}

.btn.btn--detail {
	background-color: #f18a2b;
	font-weight: 600;
}

.btn__icon {
	margin-right: 8px;
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
	width: 90%;
	margin-top: 50px;
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

.quantity {
	margin-left: 14px;
}

.btn-new {
	width: 90px;
}

.btn__wrapper2 {
	display: inline-block;
}

.col-size {
	width: 220px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="
      " class="logo"> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>LTE</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->


			<%
			String tendn = (String) session.getAttribute("tendn");
			%>

			<ul class="navbar">

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

							<li><a class="sub-nav"
								href="quanLyTaiKhoanController_admin?tdnadmin=<%=tendn%>">
									Tài khoản </a></li>
							<li><a class="sub-nav" href="quanLyChucVuController_admin">
									Chức vụ</a></li>
							<li><a class="sub-nav "
								href="quanLyNhanVienController_admin"> Nhân viên</a></li>
							<li><a class="sub-nav" href="quanLyHoaDonController_admin">
									Hóa đơn</a></li>
							<li><a class="sub-nav sub-active"
								href="quanLySanPhamController_admin"> Sản phẩm</a></li>
							<li><a class="sub-nav"
								href="quanLyLoaiSanPhamController_admin"> Loại sản phẩm</a></li>
						</ul>
				</ul>

				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview active"><a href="#"> <i
							class="nav__icon fa-solid fa-chart-simple"></i> <span
							class="main-nav">Thống kê</span>
					</a>
						<ul class="treeview-menu">
							<li><a class="sub-nav"
								href="thongKeDoanhThuController_admin">Doanh thu</a></li>
							<li><a class="sub-nav" href="thongKeHoaDonController_admin">Hóa
									đơn</a></li>
						</ul></li>
				</ul>
			</section>

			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="header__manage">Thêm Sản Phẩm</div>
			<div class="box box-primary"></div>

			<!-- Main content -->
			<div class="main__content">
				<div class="search-box"></div>
				<div class="content">
					<div class="content__input">
						<form id="productForm" action="TaiFileController"
							enctype="multipart/form-data" method="POST">

							<div class="payment__detail">
								<label>Tên sản phẩm: </label> <input name="tensp"
									class="payment__input" type="text" autocomplete="off" required />
							</div>
							<div class="payment__detail">
								<label>Ảnh sản phẩm: </label> <input name="anhsp"
									class="payment__input" type="file" autocomplete="off" required />
							</div>
							<div class="payment__detail">
								<label>Giá bán: </label> <input name="giaban"
									class="payment__input" type="text" required /><br>
							</div>
							<div class="payment__detail">
								<label>Mã loại sản phẩm: </label><select name="selectml"
									class="form-select-sm mt-3 mb-3"
									style="height: 30px; width: 100px; margin-left: 10px; font-size: 16px"
									aria-label="Default select example" required>

									<%
									ArrayList<LoaiSanPham> dsl = (ArrayList<LoaiSanPham>) request.getAttribute("dsl");
									for (LoaiSanPham dslsp : dsl) {
									%>
									<option><%=dslsp.getMaLoaiSP()%></option>
									<%
									}
									%>
								</select>

							</div>

							<button type="submit" class="btn btn--detail" name="action"
								value="add">

								<i class="btn__icon fa-solid fa-plus"></i> Add
							</button>
							
						</form>
						<a href="quanLySanPhamController_admin">
								<button type="submit" class="btn btn--detail" name="action"
									value="add" style="margin-top: 10px"> Trở về

									<!-- <input type="hidden" name="confirm_delete" value="" />
 -->
								</button>
							</a>
					</div>
					<%
					String tb = (String) request.getAttribute("tb");
					if (tb != null)
						out.print(tb);
					%>
					<%
					ArrayList<SanPham> dssp = (ArrayList<SanPham>) request.getAttribute("dssp");
					%>
					<div class="order__detail">
						<table class="order__table">
							<tr>
								<th>STT</th>
								<th>Mã sản phẩm</th>
								<th>Tên sản phẩm</th>
								<th>Ảnh sản phẩm</th>
								<th>Giá bán</th>
								<th>Mã loại sản phẩm</th>
							</tr>

							<%
							for (int i = 0; i < dssp.size(); ++i) {
								SanPham sp = dssp.get(i);
								int stt = i;
								stt++;
							%>
							<tr>
								<td class="text-center"><%=stt%></td>
								<td class="text-center"><%=sp.getMaSanPham()%></td>
								<td class="text-center"><%=sp.getTenSanPham()%></td>
								<td class="text-center"><img src=<%=sp.getAnhSanPham()%>
									alt="image" width="100" height="100"></td>
								<td class="text-center"><%=sp.getGiaBan()%> VNĐ</td>
								<td class="text-center"><%=sp.getMaLoaiSP()%></td>



								</td>
							</tr>
							<%
							}
							%>

						</table>
					</div>
				</div>
			</div>
		</div>
</body>
</html>