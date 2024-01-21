<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Theme style -->

<link rel="stylesheet" href="AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
      folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="_all-skins.min.css">
<link rel="stylesheet" href="style.css">


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
							class="fa fa-dashboard"></i> <span class="main-nav sub-active">Trang
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
							<li><a class="sub-nav" href="quanLySanPhamController_admin">
									Sản phẩm</a></li>
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

			<!-- Main content -->
			<div class="main__content">
				<section class="content-header">
					<h1>Dashboard</h1>

				</section>

				<!-- Main content -->
				<section class="content">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-aqua">
								<div class="inner">
									<h3>150</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-green">
								<div class="inner">
									<h3>
										53<sup style="font-size: 20px">%</sup>
									</h3>

									<p>Bounce Rate</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-yellow">
								<div class="inner">
									<h3>44</h3>

									<p>User Registrations</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-red">
								<div class="inner">
									<h3>65</h3>

									<p>Unique Visitors</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<!-- Left col -->
						<section class="col-lg-7 connectedSortable">
							<!-- Custom tabs (Charts with tabs)-->
							<div class="nav-tabs-custom">
								<!-- Tabs within a box -->
								<ul class="nav nav-tabs pull-right">
									<li class="active"><a href="#revenue-chart"
										data-toggle="tab">Area</a></li>
									<li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
									<li class="pull-left header"><i class="fa fa-inbox"></i>
										Sales</li>
								</ul>
								<div class="tab-content no-padding">
									<!-- Morris chart - Sales -->
									<div class="chart tab-pane active" id="revenue-chart"
										style="position: relative; height: 300px;"></div>
									<div class="chart tab-pane" id="sales-chart"
										style="position: relative; height: 300px;"></div>
								</div>
							</div>
							<!-- /.nav-tabs-custom -->

							<!-- Chat box -->
							<div class="box box-success">
								<div class="box-header">
									<i class="fa fa-comments-o"></i>

									<h3 class="box-title">Chat</h3>

									<div class="box-tools pull-right" data-toggle="tooltip"
										title="Status">
										<div class="btn-group" data-toggle="btn-toggle">
											<button type="button" class="btn btn-default btn-sm active">
												<i class="fa fa-square text-green"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm">
												<i class="fa fa-square text-red"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="box-body chat" id="chat-box">
									<!-- chat item -->
									<div class="item">
										<img
											src="https://scontent.fsgn2-8.fna.fbcdn.net/v/t39.30808-1/253659378_1493621517677249_6154112889432812490_n.jpg?stp=c60.0.480.480a_dst-jpg_p480x480&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_ohc=n5zE4AeRLoQAX8zPWOl&_nc_ht=scontent.fsgn2-8.fna&oh=00_AfC27jNa7-7tyIhraHo7UcqiSoXKnSB4lYTs2U989yavHA&oe=64BAD706"
											alt="user image" class="online">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 2:15</small> Mike Doe
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
										<div class="attachment">
											<h4>Attachments:</h4>

											<p class="filename">Theme-thumbnail-image.jpg</p>

											<div class="pull-right">
												<button type="button"
													class="btn btn-primary btn-sm btn-flat">Open</button>
											</div>
										</div>
										<!-- /.attachment -->
									</div>
									<!-- /.item -->
									<!-- chat item -->
									<div class="item">
										<img
											src="https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-1/358672691_2968207576656750_334630072998460879_n.jpg?stp=dst-jpg_p320x320&_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_ohc=cf2feanpLhsAX_bU42B&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfDDg5vsCC4L7YjZpGsNKQ-Pms92dfUdBThDPe7Zjtuyiw&oe=64BBB49E"
											alt="user image" class="offline">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 5:15</small> Alexander Pierce
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
									</div>
									<!-- /.item -->
									<!-- chat item -->
									<div class="item">
										<img
											src="https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-1/273623186_1562036667498956_742909494384806710_n.jpg?stp=dst-jpg_s480x480&_nc_cat=110&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7206a8&_nc_ohc=YJZitYx7PfgAX9F02dl&_nc_ht=scontent.fsgn2-6.fna&oh=00_AfAE57n7jOEnf-Mj_6ETQNbppBdHzWFjL6QhHUJ32XCQow&oe=64BB8F14"
											alt="user image" class="offline">

										<p class="message">
											<a href="#" class="name"> <small
												class="text-muted pull-right"><i
													class="fa fa-clock-o"></i> 5:30</small> Susan Doe
											</a> I would like to meet you to discuss the latest news about
											the arrival of the new theme. They say it is going to be one
											the best themes on the market
										</p>
									</div>
									<!-- /.item -->
								</div>
								<!-- /.chat -->
								<div class="box-footer">
									<div class="input-group">
										<input class="form-control" placeholder="Type message...">

										<div class="input-group-btn">
											<button type="button" class="btn btn-success">
												<i class="fa fa-plus"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box (chat box) -->

							<!-- TO DO List -->
							<div class="box box-primary">
								<div class="box-header">
									<i class="ion ion-clipboard"></i>

									<h3 class="box-title">To Do List</h3>

									<div class="box-tools pull-right">
										<ul class="pagination pagination-sm inline">
											<li><a href="#">&laquo;</a></li>
											<li><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">&raquo;</a></li>
										</ul>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
									<ul class="todo-list">
										<li>
											<!-- drag handle --> <span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <!-- checkbox --> <input type="checkbox" value=""> <!-- todo text -->
											<span class="text">Design a nice theme</span> <!-- Emphasis label -->
											<small class="label label-danger"><i
												class="fa fa-clock-o"></i> 2 mins</small> <!-- General tools such as edit or delete-->
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div>
										</li>
										<li><span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <input type="checkbox" value=""> <span class="text">Make
												the theme responsive</span> <small class="label label-info"><i
												class="fa fa-clock-o"></i> 4 hours</small>
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div></li>
										<li><span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <input type="checkbox" value=""> <span class="text">Let
												theme shine like a star</span> <small class="label label-warning"><i
												class="fa fa-clock-o"></i> 1 day</small>
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div></li>
										<li><span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <input type="checkbox" value=""> <span class="text">Let
												theme shine like a star</span> <small class="label label-success"><i
												class="fa fa-clock-o"></i> 3 days</small>
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div></li>
										<li><span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <input type="checkbox" value=""> <span class="text">Check
												your messages and notifications</span> <small
											class="label label-primary"><i class="fa fa-clock-o"></i>
												1 week</small>
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div></li>
										<li><span class="handle"> <i
												class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
										</span> <input type="checkbox" value=""> <span class="text">Let
												theme shine like a star</span> <small class="label label-default"><i
												class="fa fa-clock-o"></i> 1 month</small>
											<div class="tools">
												<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
											</div></li>
									</ul>
								</div>
								<!-- /.box-body -->
								<div class="box-footer clearfix no-border">
									<button type="button" class="btn btn-default pull-right">
										<i class="fa fa-plus"></i> Add item
									</button>
								</div>
							</div>
							<!-- /.box -->

							<!-- quick email widget -->
							<div class="box box-info">
								<div class="box-header">
									<i class="fa fa-envelope"></i>

									<h3 class="box-title">Quick Email</h3>
									<!-- tools box -->
									<div class="pull-right box-tools">
										<button type="button" class="btn btn-info btn-sm"
											data-widget="remove" data-toggle="tooltip" title="Remove">
											<i class="fa fa-times"></i>
										</button>
									</div>
									<!-- /. tools -->
								</div>
								<div class="box-body">
									<form action="#" method="post">
										<div class="form-group">
											<input type="email" class="form-control" name="emailto"
												placeholder="Email to:">
										</div>
										<div class="form-group">
											<input type="text" class="form-control" name="subject"
												placeholder="Subject">
										</div>
										<div>
											<textarea class="textarea" placeholder="Message"
												style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
										</div>
									</form>
								</div>
								<div class="box-footer clearfix">
									<button type="button" class="pull-right btn btn-default"
										id="sendEmail">
										Send <i class="fa fa-arrow-circle-right"></i>
									</button>
								</div>
							</div>

						</section>
						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-5 connectedSortable">

							<!-- Map box -->
							<div class="box box-solid bg-light-blue-gradient">
								<div class="box-header">
									<!-- tools box -->
									<div class="pull-right box-tools">
										<button type="button"
											class="btn btn-primary btn-sm daterange pull-right"
											data-toggle="tooltip" title="Date range">
											<i class="fa fa-minus"></i>
										</button>

										<button type="button"
											class="btn btn-primary btn-sm pull-right"
											data-widget="collapse" data-toggle="tooltip" title="Collapse"
											style="margin-right: 5px;">
											<i class="fa fa-minus"></i>
										</button>
									</div>
									<!-- /. tools -->

									<i class="fa fa-map-marker"></i>

									<h3 class="box-title">Visitors</h3>
								</div>
								<div class="box-body">
									<div id="world-map" style="height: 250px; width: 100%;"></div>
								</div>
								<!-- /.box-body-->
								<div class="box-footer no-border">
									<div class="row">
										<div class="col-xs-4 text-center"
											style="border-right: 1px solid #f4f4f4">
											<div id="sparkline-1"></div>
											<div class="knob-label">Visitors</div>
										</div>
										<!-- ./col -->
										<div class="col-xs-4 text-center"
											style="border-right: 1px solid #f4f4f4">
											<div id="sparkline-2"></div>
											<div class="knob-label">Online</div>
										</div>
										<!-- ./col -->
										<div class="col-xs-4 text-center">
											<div id="sparkline-3"></div>
											<div class="knob-label">Exists</div>
										</div>
										<!-- ./col -->
									</div>
									<!-- /.row -->
								</div>
							</div>
							<!-- /.box -->

							<!-- solid sales graph -->
							<div class="box box-solid bg-teal-gradient">
								<div class="box-header">
									<i class="fa fa-th"></i>

									<h4 class="box-title">Sales Graph</h4>
									<br>

									<div class="box-tools pull-right">
										<div>
											<button type="button" class="btn bg-teal btn-sm"
												data-widget="collapse" style="size: 10px">
												<i class="fa fa-minus"></i>
											</button>
											<button type="button" class="btn bg-teal btn-sm"
												data-widget="remove">
												<i class="fa fa-times"></i>
											</button>
										</div>
									</div>
									<div class="box-body border-radius-none">
										<div class="chart" id="line-chart" style="height: 250px;"></div>
									</div>
									<!-- /.box-body -->
									<div class="box-footer no-border">
										<div class="row">
											<div class="col-xs-4 text-center"
												style="border-right: 1px solid #f4f4f4">

												<div class="knob-label">Mail-Orders</div>
											</div>
											<!-- ./col -->
											<div class="col-xs-4 text-center"
												style="border-right: 1px solid #f4f4f4">


												<div class="knob-label">Online</div>
											</div>
											<!-- ./col -->
											<div class="col-xs-4 text-center">

												<div class="knob-label">In-Store</div>
											</div>
											<!-- ./col -->
										</div>
										<!-- /.row -->
									</div>
									<!-- /.box-footer -->
								</div>
								<!-- /.box -->

								<!-- Calendar -->
								<div class="box box-solid bg-green-gradient">
									<div class="box-header">
										<i class="fa fa-calendar"></i>

										<h3 class="box-title">Calendar</h3>
										<!-- tools box -->
										<div class="pull-right box-tools">
											<!-- button with a dropdown -->
											<div class="btn-group">

												<ul class="dropdown-menu pull-right" role="menu">
													<li><a href="#">Add new event</a></li>
													<li><a href="#">Clear events</a></li>
													<li class="divider"></li>
													<li><a href="#">View calendar</a></li>
												</ul>
											</div>

										</div>
										<!-- /. tools -->
									</div>
									<!-- /.box-header -->
									<div class="box-body no-padding">
										<!--The calendar -->
										<div id="calendar" style="width: 100%"></div>
									</div>
									<!-- /.box-body -->
									<div class="box-footer text-black">
										<div class="row">
											<div class="col-sm-6">
												<!-- Progress bars -->
												<div class="clearfix">
													<span class="pull-left">Task #1</span> <small
														class="pull-right">90%</small>
												</div>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 90%;"></div>
												</div>

												<div class="clearfix">
													<span class="pull-left">Task #2</span> <small
														class="pull-right">70%</small>
												</div>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 70%;"></div>
												</div>
											</div>
											<!-- /.col -->
											<div class="col-sm-6">
												<div class="clearfix">
													<span class="pull-left">Task #3</span> <small
														class="pull-right">60%</small>
												</div>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 60%;"></div>
												</div>

												<div class="clearfix">
													<span class="pull-left">Task #4</span> <small
														class="pull-right">40%</small>
												</div>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 40%;"></div>
												</div>
											</div>
											<!-- /.col -->
										</div>
										<!-- /.row -->
									</div>
								</div>
								<!-- /.box -->
						</section>
						<!-- right col -->
					</div>
					<!-- /.row (main row) -->

				</section>
			</div>



		</div>
</html>
