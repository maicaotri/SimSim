<%-- 
    Document   : menu_nav
    Created on : Mar 25, 2019, 7:06:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link href="<c:url value="/resource/admin/img/favicon.ico"/>"
	rel="shortcut icon" type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<link href="<c:url value="/resource/admin/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/fontawesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.carousel.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.theme.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.theme.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.transitions.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/animate.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/normalize.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/meanmenu.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/main.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/style.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/responsive.css"/>"
	rel="stylesheet" type="text/css">
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"
	type="text/javascript"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="logo-pro">
					<a href="index.html"><img class="main-logo"
						src="img/logo/logo.png" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="header-advance-area">
		<div class="header-top-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="header-top-wraper">
							<div class="row">
								<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
									<div class="menu-switcher-pro">
										<button type="button" id="sidebarCollapse"
											class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
											<i class="fas fa-align-justify"></i>
										</button>
									</div>
								</div>
								<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
									<div class="header-top-menu tabl-d-n">
										<ul class="nav navbar-nav mai-top-nav">
											<li class="nav-item"><a href="#" class="nav-link">Home</a>
											</li>
											<li class="nav-item dropdown res-dis-nn"><a href="#"
												data-toggle="dropdown" role="button" aria-expanded="false"
												class="nav-link dropdown-toggle">Quản lý sim <span
													class="angle-down-topmenu"><i class="fas fa-angle-down"></i></span></a>
												<div role="menu" class="dropdown-menu animated zoomIn">
												<a href="#" class="dropdown-item">Danh sách sim</a>
													<a href="#" class="dropdown-item">Thêm sim</a> <a href="#"
														class="dropdown-item">Sửa sim</a> 
												</div></li>
												<li class="nav-item dropdown res-dis-nn"><a href="#"
                                                data-toggle="dropdown" role="button" aria-expanded="false"
                                                class="nav-link dropdown-toggle">Quản lý user <span
                                                    class="angle-down-topmenu"><i class="fas fa-angle-down"></i></span></a>
                                                <div role="menu" class="dropdown-menu animated zoomIn">
                                                <a href="#" class="dropdown-item">Danh sách tài khoản</a>
                                                    <a href="#" class="dropdown-item">Thêm user</a> <a href="#"
                                                        class="dropdown-item">Sửa user</a> 
                                                </div></li>
											
										</ul>
									</div>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
									<div class="header-right-info">
										<ul class="nav navbar-nav mai-top-nav header-right-menu">
											<li class="nav-item">
											<a href="#" data-toggle="dropdown"
												role="button" aria-expanded="false"
												class="nav-link dropdown-toggle"><i class="fas fa-user"></i> <span
													class="admin-name">Log out</span> 
											</a>
												</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile Menu start -->
		<div class="mobile-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="mobile-menu">
							<nav id="dropdown">
								<ul class="mobile-menu-nav">
									<li><a data-toggle="collapse" data-target="#Charts"
										href="#">Quản lý sim <span
											class="admin-project-icon edu-icon edu-down-arrow"></span></a>
										<ul class="collapse dropdown-header-top">
										<li><a href="">Danh sách sim</a></li>
											<li><a href="">Thêm sim</a></li>
											<li><a href="">Sửa sim</a></li>
										</ul></li>
									<li><a data-toggle="collapse" data-target="#demoevent"
										href="#">Quản lý User <span
											class="admin-project-icon edu-icon edu-down-arrow"></span></a>
										<ul id="demoevent" class="collapse dropdown-header-top">
											<li><a href="">Danh sách tài khoản</a></li>
											<li><a href="">Thêm user</a></li>
											<li><a href="">Sửa user</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile Menu end -->
		<div class="breadcome-area">
			<div class="container-fluid">
				<div class="row">
					<div>
						<div class="breadcome-list">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="<c:url value="/resource/admin/js/vendor/jquery-1.12.4.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/bootstrap.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/wow.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery-price-slider.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/jquery.meanmenu.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/owl.carousel.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/jquery.sticky.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery.scrollUp.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/jquery.counterup.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/waypoints.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/counterup-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/morrisjs/raphael-min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/morrisjs/morris.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/morrisjs/morris-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/jquery.sparkline.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/jquery.charts-sparkline.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/sparkline-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/moment.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/fullcalendar.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/fullcalendar-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/plugins.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/main.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/tawk-chat.js"/>"
		type="text/javascript"></script>
</body>
</html>
