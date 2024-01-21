<%@page import="bean.LoaiSanPham"%>
<%@page import="bean.SanPham"%>
<%@page import="bean.DatMon"%>
<%@page import="bo.DatMonbo"%>
<%@page import="java.util.ArrayList"%>

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
<link rel="stylesheet" href="BanHang.css" />

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
.content {
	height: 100%;
	background-color: white;
}

/* Content_left */
.content__left {
	padding-right: 0;
	max-height: 86.8vh;
	height: 86.8vh;
	overflow-y: auto;
	overflow-x: hidden;
	background-color: #f5f5f5;
	padding-bottom: 20px;
}

.content__right {
	padding-right: 0;
	padding-left: 0;
}

.category {
	background-color: white;
	display: fixed;
	left: 0;
}

.category__list {
	list-style: none;
	font-size: 1.6rem;
	font-weight: 600;
	padding-left: 0;
	margin-bottom: 0;
	text-align: center;
}

.category__btn.category-active .category__link {
	color: white;
}

.category__btn.category-active, .category__btn:hover .category__link,
	.category__link:hover {
	cursor: pointer;
	background-color: #f35f66;
	color: white;
}

.category__btn {
	width: calc(100%/ 5);
	border: 1px solid gray;
	border-left-width: 0;
}

.category__link {
	display: block;
	width: 100%;
	height: 100%;
	color: black;
	padding-top: 5px;
	padding-bottom: 5px;
	text-decoration: none;
}

/* Product */
.product__list {
	padding-left: 0;
	padding-right: 0;
}

.product__link {
	text-decoration: none;
	display: block;
	width: 18%;
	margin: 0 1px;
}

.product:hover {
	box-shadow: 2px 2px 4px 2px rgb(0 0 0/ 25%);
	border-radius: 5px;
	cursor: pointer;
}

.product {
	display: block;
	position: relative;
	background-color: white;
	text-decoration: none;
	box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.1);
	transition: transform ease-in 0.1s;
	will-change: transform;
	margin: 20px 2px 2px 2px;
	border-radius: 5px;
	border: 2px solid rgba(0, 0, 0, 0.1);
}

.product__img {
	padding-top: 100%;
	background: no-repeat top center/contain;
	border-radius: 5px;
}

.product__common {
	font-size: 14px;
	line-height: 26px;
	text-align: center;
	color: #53382c;
	overflow: hidden;
}

.product__id {
	font-weight: 500;
}

.product__name {
	font-size: 18px;
	height: 52px;
	font-weight: 700;
	text-transform: uppercase;
	overflow: hidden;
	display: block;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	text-overflow: ellipsis;
}

.product__price {
	font-weight: 500;
}

/* Content-right */
.order__detail {
	height: 49vh;
	max-height: 49vh;
	overflow-y: auto;
	width: 100%;
}

.order__table {
	width: 100%;
	font-size: 1.6rem;
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

.number {
	align-self: center;
}

.quantity {
	align-self: center;
	margin-left: 14px;
}

.arrow__icon:hover, .delete__icon:hover {
	cursor: pointer;
}

.payment {
	margin: 30px 0 0 20px;
	height: 27vh;
}

.payment__detail {
	display: flex;
	font-size: 1.6rem;
	font-weight: 500;
	margin-bottom: 10px;
}

.payment__input {
	display: block;
	margin: 0 80px 0 auto;
	width: 180px;
}

.payment__method {
	display: block;
	margin: 0 80px 0 auto;
	width: 180px;
}

.btn__wrapper {
	margin-left: 20px;
}

.btn:hover {
	color: white;
	opacity: 0.8;
}

.btn {
	min-width: 120px;
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

.btn.btn--save {
	background-color: #2876ec;
}

.btn.btn--print {
	background-color: #f35757;
}

.btn__icon {
	margin-right: 8px;
}

.btn__link {
	display: inline-block;
}

.ml {
	margin-left: 20px;
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
				<li class="tab-item active"><a class="nav-link"
					href="hienThiMenuController"><i
						class="tab-icon fa-solid fa-cash-register"></i> Bán hàng</a></li>

				<li class="tab-item"><a class="nav-link"
					href="quanLyHDController_nhanvien"><i
						class="tab-icon fa-solid fa-file-invoice"></i> Quản lý hóa đơn</a></li>

				<li class="tab-item"><a class="nav-link"
					href="thongKeController_nhanvien"><i
						class="tab-icon fa-solid fa-chart-simple"></i> Thống kê</a></li>

				<li class="tab-item"><a class="nav-link" href="LSBHController"><i
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
		<td>
		<h3>Tìm kiếm</h3>
			<form action="hienThiMenuController" method="post">
				<input type="text" name="txttk" class="search__input" size="50px" style="margin-bottom: 15px" required>
				<button class="search__button" >
					<i class="search__icon fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
		</td>
		<%
		ArrayList<LoaiSanPham> dslsp = (ArrayList<LoaiSanPham>) request.getAttribute("dslsp");
		ArrayList<SanPham> dssp = (ArrayList<SanPham>) request.getAttribute("dssp");
		%>


		<div class="content row g-0">
			<div class="content__left col-sm-8">
				<div class="category">
					<ul class="category__list d-flex justify-content-between">
						<%
						for (LoaiSanPham lsp : dslsp) {
							String maLoaiSP = String.valueOf(lsp.getMaLoaiSP());
						%>
						<li
							class="nav-item category__btn <%if ((request.getParameter("maloai") != null && request.getParameter("maloai").equals(maLoaiSP))
		|| (request.getParameter("maloai") == null && maLoaiSP.equals("1"))) {%>category-active<%}%>">
							<a class="nav-link  category__link"
							href="hienThiMenuController?maloai=<%=maLoaiSP%>"> <%=lsp.getTenLoaiSP()%>
						</a>
						</li>
						<%
						}
						%>
					</ul>
				</div>
				<div class="row">
					<div class="product__list d-flex justify-content-evenly flex-wrap">
						<%
						for (SanPham sp : dssp) {
						%>
						<a class="nav-link product__link col-2"
							href="datMonController?masp=<%=sp.getMaSanPham()%>&tensp=<%=sp.getTenSanPham()%>&giaban=<%=sp.getGiaBan()%>">
							<div class="product">
								<div class="product__img"
									style="background-image: url(<%=sp.getAnhSanPham()%>);"></div>
								<div class="product__common product__id">
									ID:
									<%=sp.getMaSanPham()%></div>
								<div class="product__common product__name"><%=sp.getTenSanPham()%></div>
								<div class="product__common product__price">
									Giá:
									<%=sp.getGiaBan()%>
									VNĐ
								</div>

							</div>
						</a>
						<%
						}
						%>
					</div>
				</div>
			</div>

			<div class="content__right col-sm-4">
				<div class="order__detail">
					<table class="order__table">
						<tr>
							<th>STT</th>
							<th>ID</th>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th></th>
						</tr>

						<%
						DatMonbo gh = new DatMonbo();
						gh = (DatMonbo) session.getAttribute("orderSession");
						long tongTien = 0;
						int tongSoLuong = 0;

						if (gh != null) {
							tongTien = (long) gh.tongTien();
							tongSoLuong = (int) gh.tongSoLuong();
							for (int i = 0; i < gh.dsdm.size(); ++i) {
								DatMon datMon = gh.dsdm.get(i);
								int stt = i;
								stt++;
						%>

						<tr>

							<td class="text-center"><%=stt%></td>
							<td class="text-center"><%=datMon.getMaSanPham()%></td>
							<td><%=datMon.getTenSanPham()%></td>
							<td class="d-flex justify-content-center">
								<div class="number"><%=datMon.getSoLuong()%></div>
								<div class="quantity d-flex flex-column">
									<a class="nav-link"
										href="CapNhatDatMonController?increase=<%=datMon.getMaSanPham()%>"><i
										class="arrow__icon increase fa-solid fa-angle-up"></i></a> <a
										class="nav-link"
										href="CapNhatDatMonController?decrease=<%=datMon.getMaSanPham()%>"><i
										class="arrow__icon decrease fa-solid fa-angle-down"></i></a>
								</div>
							</td>
							<td class="text-center"><%=datMon.getGiaBan()%></td>
							<td class="text-center"><a class="nav-link"
								href="CapNhatDatMonController?masp=<%=datMon.getMaSanPham()%>"><i
									class="delete__icon fa-solid fa-x"></i></a></td>
						</tr>

						<%
						}
						}
						%>
					</table>

				</div>

				<div class="btn__wrapper">
					<a class="nav-link btn__link" href="luuHoaDonController"><button
							class="btn btn--save">
							<i class="btn__icon fa-solid fa-floppy-disk"></i> Bán
						</button></a>

					<button class="btn btn--print ml">
						<i class="btn__icon fa-solid fa-print"></i> In hóa đơn
					</button>
					<div class="payment">
						<div class="payment__detail">
							<label>Tổng tiền: </label> <input class="payment__input"
								type="text" value=<%out.println(tongTien);%> />
						</div>
						<div class="payment__detail">
							<label>Tổng số lượng: </label> <input class="payment__input"
								type="text" value=<%out.println(tongSoLuong);%> />
						</div>

						<div class="payment__detail">
							<label>Số tiền khách đưa: </label> <input class="payment__input"
								type="text" />
						</div>
						<div class="payment__detail">
							<label>Số tiền cần trả: </label> <input class="payment__input"
								type="text" />
						</div>
						<div class="payment__detail">
							<label for="payment-method">Phương thức thanh toán: </label> <select
								class="payment__method" name="payment-method"
								id="payment-method">
								<option value="cash">Tiền mặt</option>
								<option value="bank-card">Thẻ ngân hàng</option>
							</select>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>

	<!-- Handle tabs/ categories movement -->
	<script>
		    const $ = document.querySelector.bind(document);
		    const $$ = document.querySelectorAll.bind(document);
		
		    const itemActive = $(".tab-item.active");
		    const line = $(".tabs .line");
		
		    line.style.left = itemActive.offsetLeft + "px";
		    line.style.width = itemActive.offsetWidth + "px";
            
            
            const paymentInput = document.querySelector(".payment__detail:nth-child(3) input");
            const totalAmountInput = document.querySelector(
                ".payment__detail:nth-child(1) input"
            );

            paymentInput.addEventListener("keydown", function (e) {
                if (e.key === "Enter") {
                    e.preventDefault();

                    const paymentAmount = parseInt(paymentInput.value);
                    const totalAmount = parseInt(totalAmountInput.value);

                    if (!isNaN(paymentAmount) && !isNaN(totalAmount)) {
                        const changeAmount = paymentAmount - totalAmount;
                        const changeAmountInput = document.querySelector(
                            ".payment__detail:nth-child(4) input"
                        );
                        changeAmountInput.value = changeAmount;
                    }
                }
            });
        </script>

	<!-- Handle payment method -->
	<script>
            const paymentMethodSelect = $("#payment-method");
            const paymentDetailDivs = $$(".payment__detail");

            paymentMethodSelect.addEventListener("change", () => {
                const selectedOption = paymentMethodSelect.value;

                if (selectedOption === "bank-card") {
                    for (const div of paymentDetailDivs) {
                        const label = div.querySelector("label");
                        if (
                            label.textContent === "Số tiền khách đưa: " ||
                            label.textContent === "Số tiền cần trả: "
                        ) {
                            div.style.display = "none";
                        }
                    }
                } else {
                    for (const div of paymentDetailDivs) {
                        div.style.display = "flex";
                    }
                }
            });
        </script>

	<script>
        	let categoryItem = $$(".category__item");
        	
        	categoryItem.forEach(function (item) {
        		item.addEventListener("click", function (e){
        			e.preventDefault();
        			
        			let currActive  = $(".category__item.active");
        			
        			if(currActive) {
        				currActive.classList.remove("active");
        			}
        			
        			let activeItem = this.parentNode;
        			activeItem.classList.add("active");
        		})
        	})
        
        </script>


</body>
</html>