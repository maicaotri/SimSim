<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Data Table | Kiaalap - Kiaalap Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resource/admin/img/favicon.ico"/>">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/font-awesome.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/owl.carousel.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/owl.theme.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/owl.transitions.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/animate.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/normalize.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/meanmenu.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/editor/select2.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/editor/datetimepicker.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/editor/bootstrap-editable.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/editor/x-editor-style.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/data-table/bootstrap-table.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/css/data-table/bootstrap-editable.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/style.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/responsive.css"/>">

<script src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
<script src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>

<body>
	<%@ include file="menu.jsp"%>
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="menu_nav.jsp"%>

		<div class="data-table-area mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>
										Projects <span class="table-project-n">Data</span> Table
									</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div id="toolbar">
										<select class="form-control dt-tb">
											<option value="">Export Basic</option>
											<option value="all">Export All</option>
											<option value="selected">Export Selected</option>
										</select>
									</div>
									<table id="table" data-toggle="table" data-pagination="true"
										data-search="true" data-show-columns="true"
										data-show-pagination-switch="true" data-show-refresh="true"
										data-key-events="true" data-show-toggle="true"
										data-resizable="true" data-cookie="true"
										data-cookie-id-table="saveId" data-show-export="true"
										data-click-to-select="true" data-toolbar="#toolbar">
										<thead>
											<tr>
												<th data-field="state" data-checkbox="true"></th>
												<th data-field="id">Sim</th>
												<th data-field="name" data-editable="true">Giá tiền</th>
												<th data-field="name" data-editable="true">Mạng</th>
												<th data-field="email" data-editable="true">Tổng nút</th>
												<th data-field="phone" data-editable="true">Tổng điểm</th>
												<th data-field="task" data-editable="true">Tình trạng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list}" var="sim">
								<tr>
								<td></td>
								<td><a href="" title="${sim.realNumber}" rel="nofollow">
								<strong class="font-16 sim">${sim.realNumber}</strong></a></td>
								<td class="font-13" style="color: black;"><fmt:formatNumber
								type="number" maxFractionDigits="3" value="${sim.price}" />VNĐ</td>
								<td class="text-center"><span class="network n${sim.netword.name}"></span></td>
								<td class="text-center"><span class="badge">${sim.score}</span></td>
								<td class="text-center"><span class="badge">${sim.sumOfNumbers}</span></td>
								<td>
								<c:if test = "${sim.sold == 0}">Còn</c:if>
								<c:if test = "${sim.sold == 1}">Đã bán</c:if>
								</td>
								</tr>
							</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Static Table End -->
		<div class="footer-copyright-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="footer-copy-right">
							<p>
								Copyright © 2018. All rights reserved. Template by <a href="">Colorlib</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value="/resource/admin/js/vendor/jquery-1.12.4.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/wow.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery-price-slider.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery.meanmenu.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/owl.carousel.min.jss"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery.sticky.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/jquery.scrollUp.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/metisMenu/metisMenu.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/metisMenu/metisMenu-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/bootstrap-table.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/tableExport.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/data-table-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/bootstrap-table-editable.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/bootstrap-editable.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/bootstrap-table-resizable.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/colResizable-1.5.source.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/data-table/bootstrap-table-export.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/jquery.mockjax.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/mock-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/select2.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/moment.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/bootstrap-editable.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/editable/xediable-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/chart/jquery.peity.min.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/peity/peity-active.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/tab.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/plugins.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/main.js"/>"></script>
	<script src="<c:url value="/resource/admin/js/tawk-chat.js"/>"></script>

</body>

</html>