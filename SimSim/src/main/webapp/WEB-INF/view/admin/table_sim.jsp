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

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resource/admin/img/favicon.ico"/>">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/owl.transitions.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/animate.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/normalize.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/meanmenu.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/main.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/editor/select2.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/editor/datetimepicker.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/editor/bootstrap-editable.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/editor/x-editor-style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/data-table/bootstrap-table.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/css/data-table/bootstrap-editable.css"/>">
<link rel="stylesheet" href="<c:url value="/resource/admin/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resource/admin/responsive.css"/>">

<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>

</head>

<body>
	<%@ include file="menu.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="menu_nav.jsp"%>

		<div class="panel-body">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form class="form-horizontal" method="get">
					<div class="form-group">
						<div class="col-md-4 col-xs-12 col-lg-4">
							<div class="row">
								<select id="networdId" class="form-control strong">
									<option value="0">Chọn mạng di động</option>
									<option value="1">Viettel</option>
									<option value="2">Mobifone</option>
									<option value="3">Vinaphone</option>
									<option value="4">Vietnamobile</option>
									<option value="5">Gmobile</option>
								</select>
							</div>
						</div>
						<div class="col-md-4 col-xs-6 col-lg-4 showgia "
							style="margin-right: -15px;">
							<div class="input-group">
								<div class="input-group-addon font-12">Giá từ:</div>
								<input id="priceFrom" class="form-control price"
									placeholder="100,000" />
							</div>
						</div>
						<div class="col-md-4 col-xs-6 col-lg-4 showgia">
							<div class="input-group">
								<div class="input-group-addon font-12">Đến:</div>
								<input id="priceTo" class="form-control price"
									placeholder="10,000,000" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<input id="simFind" type="text" value=""
								class="form-control pull-left popover-dismiss"
								placeholder="Nhập số sim bạn cần tìm" data-container="body"
								data-toggle="popover" data-placement="bottom"
								data-content=" - Sử dụng dấu <span class='red'>
                                        x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> "
								title="Hướng dẫn tìm kiếm sim" /> <span class="input-group-btn">
								<button type="button" class="btn btn-sm btn-warning strong"
									id="searchBtn">Tìm sim</button>
							</span>
						</div>
					</div>
					<div class="form-group text-center">
						<strong class="red font-12">Hot key:</strong> <span class="hotkey">
							<a rel="nofollow" href="" class="hotkey">0912*68</a>, <a
							rel="nofollow" href="" class="hotkey">090*888</a>, <a
							rel="nofollow" href="" class="hotkey">0913*</a>, <a
							rel="nofollow" href="" class="hotkey">*6688</a>, <a
							rel="nofollow" href="" class="hotkey">09*(39|79|38|78)</a>, <a
							rel="nofollow" href="" class="hotkey">09(1|0)*888</a>
						</span>
					</div>
					<div class="form-group text-center fullsearch">
						<div class="col-md-5 col-xs-6 col-md-offset-1">
							<div class="input-group">
								<div class="input-group-addon font-12">Tổng điểm:</div>
								<input id="totalNumbers" maxlength="2" class="form-control mp0 "
									placeholder=" < 81" />
							</div>
						</div>
						<div class="col-md-5 col-xs-6">
							<div class="input-group">
								<div class="input-group-addon font-12">Tổng Nút:</div>
								<input id="score" maxlength="1" class="form-control mp0 "
									placeholder=" 0 -9" />
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>

		<div class="data-table-area mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>Danh sách sim</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<table id="table" data-toggle="table">
										<thead>
											<tr>
												<th data-field="id">ID</th>
												<th data-field="sim">Sim</th>
												<th data-field="price">Giá tiền</th>
												<th data-field="name">Mạng</th>
												<th data-field="email">Tổng nút</th>
												<th data-field="phone">Tổng điểm</th>
												<th data-field="task">Tình trạng</th>
												<th data-field="enabled">Khả dụng</th>
											</tr>
										</thead>
										<tbody id="appendData">

										</tbody>
									</table>
									<div id="appendBtnPage"
										style="vertical-align: middle; text-align: center; margin-top: 3px;"></div>
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
		<script
			src="<c:url value="/resource/admin/js/vendor/jquery-1.12.4.min.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/wow.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/jquery-price-slider.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/jquery.meanmenu.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/owl.carousel.min.jss"/>"></script>
		<script src="<c:url value="/resource/admin/js/jquery.sticky.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/jquery.scrollUp.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/metisMenu/metisMenu.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/metisMenu/metisMenu-active.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/bootstrap-table.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/tableExport.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/data-table-active.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/bootstrap-table-editable.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/bootstrap-editable.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/bootstrap-table-resizable.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/colResizable-1.5.source.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/data-table/bootstrap-table-export.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/jquery.mockjax.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/mock-active.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/editable/select2.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/moment.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/bootstrap-datetimepicker.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/bootstrap-editable.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/editable/xediable-active.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/chart/jquery.peity.min.js"/>"></script>
		<script
			src="<c:url value="/resource/admin/js/peity/peity-active.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/tab.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/plugins.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/main.js"/>"></script>
		<script src="<c:url value="/resource/admin/js/tawk-chat.js"/>"></script>

		<script type="text/javascript">
	$( document ).ready(function() {
		loadData();
		$("#searchBtn").click(function(){
			loadData();
	    }); 
	});
	
	  
	function loadData(page){
		$.ajax({
		    type: "POST", // HTTP method POST or GET
		    url: '${pageContext.request.contextPath}/sim/findSimView', 
		    dataType: 'json',
		     data: {
		    	 page: page,
		    	 size: $('#size').val(),
		    	 networdId: $('#networdId').val(),
		    	 priceFrom: $('#priceFrom').val(),
		    	 priceTo: $('#priceTo').val(),
		    	 score: $('#score').val(),
		    	 totalNumbers: $('#totalNumbers').val(),
		    	 simFind: $('#simFind').val(),
		    	 totalNumbers: $('#totalNumbers').val(),
		     },
		    success: function(data) {
		    	console.log(data); 
		    	//$('#manage_user table > tbody').prepend(data);
		        //alert(data);
		        $('#appendBtnPage').empty();
		        $('#appendData').empty();
		        data.listSim.forEach(v => {
		        	var tr = document.createElement('tr');
		        	var tdId =  document.createElement('td');
		        	tdId.innerHTML = v.id;
		        	var tdRealNumber =  document.createElement('td');
		        	tdRealNumber.innerHTML = v.realNumber;
		        	var tdScore =  document.createElement('td');
		        	tdScore.innerHTML = v.score;
		        	var tdPrice = document.createElement('td');
		        	tdPrice.innerHTML =v.price;
		        	var tdNetword = document.createElement('td');
		        	tdNetword.innerHTML =v.netword.name;
		        	var tdScore = document.createElement('td');
		        	tdScore.innerHTML =v.score;
		        	var tdTotalNumber = document.createElement('td');
		        	tdTotalNumber.innerHTML =v.sumOfNumbers;
		        	var tdSold = document.createElement('td');
		        	if(v.sold==1){
		        	tdSold.innerHTML ='Đã bán';
		        	}
		        	if(v.sold==0){
		        	tdSold.innerHTML ='Còn';
		        	}
		        	var tdEnabled = document.createElement('td');
		        	if(v.enabled==1){
		        	tdEnabled.innerHTML ='Khả dụng';
		        	}
		        	if(v.enabled==0){
		        	tdEnabled.innerHTML ='Vô hiệu hóa';
		        	}
		        	
		        	
		        	tr.append(tdId);
		        	tr.append(tdRealNumber);
		        	tr.append(tdPrice);
		        	tr.append(tdNetword);
		        	tr.append(tdScore);
		        	tr.append(tdTotalNumber);
		        	tr.append(tdSold);
		        	tr.append(tdEnabled);
		        	$('#appendData').append(tr);
		        });
		        
		        data.listPage.forEach(p => {
		        	var btn = document.createElement('BUTTON');
		        	btn.innerHTML = p;
		        	btn.onclick = function(){
		        		loadData(p);
		        	  };
		        	$('#appendBtnPage').append(btn);
		        });
		    },
		    error: function(xhr, ajaxOptions, thrownError) {
		        //On error, we alert user
		        alert(thrownError);
		    },
		    complete: function() {
		        //alert('update success'); 
		    }
		});
		}
</script>
</body>

</html>