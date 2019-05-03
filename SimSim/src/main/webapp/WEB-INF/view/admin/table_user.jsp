<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Danh sách người dùng</title>
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

		<div class="data-table-area mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>Danh sách tài khoản</h1>
Tìm kiếm theo username, email, tên:  <input id="keyword" placeholder="keyword" type="text" />
<button id="searchBtn" class="btn btn-sm">Search</button>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<table id="table" data-toggle="table">
										<thead>
											<tr>
												<th data-field="username">Username</th>
												<th data-field="firstName">Tên</th>
												<th data-field="lastName">Họ</th>
												<th data-field="sex">Giới tính</th>
												<th data-field="phone">Sdt</th>
												<th data-field="address">Địa chỉ</th>
												<th data-field="enabled">Trạng thái</th>
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
		loadData(1);
		$("#searchBtn").click(function(){
			loadData(1);
	    }); 
	});
	
	  
	function loadData(page){
		$.ajax({
		    type: "POST", 
		    url: '${pageContext.request.contextPath}/admin/user/finduser', 
		    dataType: 'json',
		     data: {
		    	 keyword: $('#keyword').val(),
		    	 page: page
		     },
		    success: function(data) {
		    	console.log(data); 
		        $('#appendBtnPage').empty();
		        $('#appendData').empty();
		        data.listUser.forEach(v => {
		        	var tr = document.createElement('tr');
		        	var tdUsername =  document.createElement('td');
		        	tdUsername.innerHTML = v.username;
		        	var tdFName =  document.createElement('td');
		        	tdFName.innerHTML = v.fName;
		        	var tdLName = document.createElement('td');
		        	tdLName.innerHTML =v.lName;
		        	var tdSex = document.createElement('td');
		        	tdSex.innerHTML =v.sex;
		        	var tdPhone = document.createElement('td');
		        	tdPhone.innerHTML =v.phone;
		        	var tdAddress = document.createElement('td');
		        	tdAddress.innerHTML =v.address;
		        	var tdEnabled = document.createElement('td');
		        	if(v.enabled==1){
		        	tdEnabled.innerHTML ='Khả dụng';
		        	}
		        	if(v.enabled==0){
		        	tdEnabled.innerHTML ='Vô hiệu hóa';
		        	}
		        	
		        	
		        	tr.append(tdUsername);
		        	tr.append(tdFName);
		        	tr.append(tdLName);
		        	tr.append(tdSex);
		        	tr.append(tdPhone);
		        	tr.append(tdAddress);
		        	tr.append(tdEnabled);
		        	$('#appendData').append(tr);
		        });
		        if(data.listUser.length == 0){
		        	var tr = document.createElement('tr');
		        	tr.append('Không tìm thấy kết quả');
		        	$('#appendData').append(tr);
		        }
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