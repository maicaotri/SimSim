<%-- 
    Document   : menu
    Created on : Mar 25, 2019, 6:52:20 PM
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
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Menu</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resource/admin/img/favicon.ico"/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/fontawesome.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/owl.carousel.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/owl.theme.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/owl.transitions.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/animate.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/normalize.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/meanmenu.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/main.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/style.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/admin/css/responsive.css"/>">
<script type="text/javascript"
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>


</head>
</head>
<body>
	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header" style="width: 200px">
				<a href=""> <img src="<c:url value="/resource/admin/img/logo/sim.jpg"/>" alt="" class="main-logo" style="width: 30%; height:40%"></a>
				<strong><a href=""><img src="<c:url value="/resource/admin/img/logo/sim.jpg"/>" alt="" class="main-logo" style="width: 30%; height:40%">
				</a></strong>
			</div><br>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class="has-arrow" href=""> <i class="fab fa-buffer"></i> <span
								class="mini-click-non"> Quản lý sim</span>
						</a>
							<ul class="submenu-angle" aria-expanded="true">
								<li><a title="Dashboard v.1"
									href="${pageContext.request.contextPath}/admin/sim/table"><span
										class="mini-sub-pro">Danh sách sim</span></a></li>
								<li><a title="Dashboard v.1"
									href="${pageContext.request.contextPath}/addSim"><span
										class="mini-sub-pro">Thêm sim</span></a></li>
								<li><a title="Dashboard v.2" href=""><span
										class="mini-sub-pro">Sửa sim</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="" aria-expanded="false"><i class="fas fa-id-card-alt"></i> <span
								class="mini-click-non">  Quản lý User</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Dashboard v.1"
									href="${pageContext.request.contextPath}/admin/danhsach"><span
										class="mini-sub-pro">Danh sách tài khoản</span></a></li>
								<li><a title="All Professors" href="${pageContext.request.contextPath}/addUser"><span
										class="mini-sub-pro">Thêm user</span></a></li>
								<li><a title="Add Professor" href=""><span
										class="mini-sub-pro">Sửa user</span></a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</nav>
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
</body>
</html>
