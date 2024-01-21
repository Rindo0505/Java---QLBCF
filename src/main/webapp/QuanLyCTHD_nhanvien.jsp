<%@page import="java.util.ArrayList"%>
<%@page import="bean.ChiTietHoaDon"%>

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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

/* Content */
.main__content {
	background-color: #f5f5f5;
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
	width: 220px;
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

.btn__link {
	display: inline-block;
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

.ml {
	margin-left: 10px;
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
				<li class="tab-item active"><a class="nav-link"
					href="quanLyHDController_nhanvien"><i
						class="tab-icon fa-solid fa-file-invoice"></i> Quản lý hóa đơn</a></li>
				<li class="tab-item"><a class="nav-link" href="thongKeController_nhanvien"><i
						class="tab-icon fa-solid fa-chart-simple"></i> Thống kê</a></li>
						
				<li class="tab-item"><a class="nav-link"
					href="LSBHController"><i
						class="tab-icon fa-solid fa-chart-simple"></i> Lịch Sử Bán Hàng</a></li>
						
						
				<div class="line"></div>
			</ul>
				</div>
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

		<div class="main__content">
			<div class="search-box">
				<form action="#" class="search">
					<input type="text" class="search__input"
						placeholder="Tìm kiếm chi tiết hóa đơn" />

					<button class="search__button">
						<i class="search__icon fa-solid fa-magnifying-glass"></i>
					</button>
				</form>
			</div>
			<div class="content">
				<div class="content__input">
					<form id="productForm" action="quanLyCTHDController_nhanvien"
						method="POST">
						<div class="payment__detail">
							<label>Mã hóa đơn: </label> <input name="mahd"
								class="payment__input" type="text"
								value="<%out.print(request.getParameter("mahd") != null ? request.getParameter("mahd") : "");%>" />
						</div>
						<div class="payment__detail">
							<label>Mã sản phẩm: </label> <input name="masp"
								class="payment__input" type="text"
								value="<%out.print(request.getParameter("masp") != null ? request.getParameter("masp") : "");%>" />
						</div>
						<div class="payment__detail">
							<label>Số lượng: </label> <input name="sl" class="payment__input"
								type="text"
								value="<%out.print(request.getParameter("sl") != null ? request.getParameter("sl") : "");%>" />
						</div>
						<div class="payment__detail">
							<label>Đơn giá: </label> <input name="dongia"
								class="payment__input" type="text"
								value="<%out.print(request.getParameter("dongia") != null ? request.getParameter("dongia") : "");%>" />
						</div>
						<input type="hidden" name="confirm_delete" value="" />
					</form>

				</div>

				<!-- <div class="btn__wrapper">
					<button type="submit" form="productForm" class="btn btn--save"
						name="action" value="edit">
						<i class="btn__icon fa-solid fa-floppy-disk"></i> Cập nhật
					</button>
					</button>
				</div> -->
				
				<%
				Long tt = (Long) request.getAttribute("Tt");
				%>

				<%
				ArrayList<ChiTietHoaDon> dscthd = (ArrayList<ChiTietHoaDon>) request.getAttribute("dscthd");
				%>
				<div class="order__detail">
					<table class="order__table">
						<tr>
							<th>STT</th>
							<th>Mã hóa đơn</th>
							<th>Mã nhân viên</th>
							<th>Mã sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th>Đơn giá</th>
							<th>Thành tiền</th>
							
						</tr>

						<%
						for (int i = 0; i < dscthd.size(); ++i) {
							ChiTietHoaDon cthd = dscthd.get(i);
							int stt = i;
							stt++;
						%>
						<tr>
							<td class="text-center"><%=stt%></td>
							<td class="text-center"><%=cthd.getMaHoaDon()%></td>
							<td class="text-center"><%=cthd.getManv()%></td>
							<td class="text-center"><%=cthd.getMaSanPham()%></td>
							<td class="text-center"><%=cthd.getTenSP()%></td>
							<td class="text-center"><%=cthd.getSoLuong()%></td>
							<td class="text-center"><%=cthd.getDonGia()%></td>
							<td class="text-center"><%=cthd.getThanhTien()%></td>
							
						
								<div class="btn__wrapper2">
									<%-- <a class="nav-link btn__link"
										href="quanLyCTHDController_nhanvien?mahd=<%=cthd.getMaHoaDon()%>&masp=<%=cthd.getMaSanPham()%>&sl=<%=cthd.getSoLuong()%>&dongia=<%=cthd.getDonGia()%>">
										<button class="btn btn--edit btn-new">
											<i class="btn__icon fa-solid fa-pen-to-square"></i> Sửa
										</button>
									</a> --%>
								</div>

							</td>
						</tr>
						<%
						}
						%>
					</table>
					<div style="text-align: right; font-size: 20px">
					Tổng Tiền: <%=tt%> VNĐ
					</div>
					
				</div>
			</div>
		</div>


	</div>

	<!-- <script>
		const $ = document.querySelector.bind(document);
		const $$ = document.querySelectorAll.bind(document);

		const itemActive = $(".tab-item.active");
		const line = $(".tabs .line");

		line.style.left = itemActive.offsetLeft + "px";
		line.style.width = itemActive.offsetWidth + "px";
	</script>

	<script>
		function confirmDelete() {
			var confirmed = confirm("Bạn có chắc chắn muốn xóa CTHD?");
			var confirmDeleteInput = document
					.querySelector('input[name="confirm_delete"]');
			if (confirmed) {
				confirmDeleteInput.value = "true";
			} else {
				confirmDeleteInput.value = "false";
			}
			return confirmed;
		}

		function confirmDelete2(mahd, masp) {
			var confirmed = confirm("Bạn có chắc chắn muốn xóa CTHD?");
			var confirmDeleteInput = document
					.querySelector('input[name="confirm_delete"]');

			var mahdInput = document.querySelector('input[name="mahd"]');
			var maspInput = document.querySelector('input[name="masp"]');
			if (confirmed) {
				confirmDeleteInput.value = "true";
				mahdInput.value = mahd;
				mahdInput.value = mahd;
			} else {
				confirmDeleteInput.value = "false";
			}
			return confirmed;
		}
	</script> -->
</body>
</html>

