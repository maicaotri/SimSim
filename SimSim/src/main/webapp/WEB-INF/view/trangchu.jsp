<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />
<link
	href="<c:url value="/resource/bootstrap-3.4.1-dist/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="container-fluid">
		<div class="container-fluid tophotline hidden-xs">
			<div class="container">
				<div class="pull-left wow fadeInRight">
					<i class="glyphicon glyphicon-calendar"></i> Hôm nay: 23/03/2019
				</div>
				<div class="cart wow fadeInLeft" data-toggle="modal"
					data-target="#myModal">
					<a href="${pageContext.request.contextPath}/user/cart"
						class="addcart hidden-xs"> <i
						class="glyphicon glyphicon-shopping-cart font-12 hidden-xs"></i>
						Giỏ hàng <span class="hidden-xs badge" id="cart">0</span>
					</a>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>

		<div class="container">
			<div class="row" id="row123">
				<div class="banner hidden-xs" style="vertical-align: top;"></div>
				<div class="clearfix"></div>
				<%@ include file="menu_top.jsp"%>
				<div class="clearfix"></div>
				<div id="left">
					<div class="panel panel-primary" id="leftmenu">
						<div class="panel-heading hidden-xs">
							<h2 class="panel-title">
								<i class="glyphicon glyphicon-list"></i> Tìm sim theo các mạng
							</h2>
						</div>
						<nav class="navbar-default" role="navigation">
							<div class="panel panel-default visible-xs" id="search_box1"
								style="background: #f5f5f5">
								<div class="text-center">
									<div class="stv-search-bg text-primary"
										style="font-size: 32px; margin-top: 2px"></div>

								</div>
							</div>
							<%@ include file="menu_left.jsp"%>
						</nav>
					</div>
				</div>
			</div>
			<div class="" id="main">
				<div class="panel panel-default hidden-xs" id="search_box">
					<div class="text-center">
						<div class="stv-search-bg text-primary"
							style="font-size: 32px; margin-top: -2px"></div>

					</div>
					<div class="panel-body">
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
										title="Hướng dẫn tìm kiếm sim" /> <span
										class="input-group-btn">
										<button type="button" class="btn btn-sm btn-warning strong"
											id="searchBtn">Tìm sim</button>
									</span>
								</div>
							</div>
							<div class="form-group text-center">
								<strong class="red font-12">Hot key:</strong> <span
									class="hotkey"> <a rel="nofollow" href="" class="hotkey">0912*68</a>,
									<a rel="nofollow" href="" class="hotkey">090*888</a>, <a
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
										<input id="totalNumbers" maxlength="2"
											class="form-control mp0 " placeholder=" < 81" />
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
				</div>

				<%@ include file="menu_network.jsp"%>

				<div class="clearfix"></div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h1 class="panel-title">
							SIM SỐ ĐẸP NỔI BẬT <a target="_blank" href=""
								class="pull-right glyphicon glyphicon-print"></a>
						</h1>
					</div>
					<table class="table table-bordered table-condensed">
						<thead>
							<tr>
								<th class="active text-center">Sim</th>
								<th class="active sortprice text-center">Giá tiền </th>
								<th class="active text-center">Tổng</th>
								<th class="active text-center">Mạng di dộng</th>
								<th class="active text-center">Giỏ hàng</th>
							</tr>
						</thead>
						<tbody id="appendData" class="text-center">
					</table>
				</div>
				<div id="appendBtnPage"
					style="vertical-align: middle; text-align: center; margin-top: 3px;"></div>
			</div>
			<%@ include file="menu_right.jsp"%>
		</div>
	</div>
	<script src="<c:url value="/resource/js/sim.js"/>"
		type="text/javascript"></script>
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
	            url: '${pageContext.request.contextPath}/sim/findSimDetail', 
	            dataType: 'json',
	             data: {
	                 page: page,
	                 size: 20,
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
	                    var tdRealNumber =  document.createElement('td');
	                    tdRealNumber.innerHTML = "<strong class='font-16 sim'>" + v.realNumber + "</strong>";
	                    var tdPrice = document.createElement('td');
	                    tdPrice.innerHTML = v.price +" VNĐ";
	                    var tdTotalNumber = document.createElement('td');
	                    tdTotalNumber.innerHTML =v.sumOfNumbers;
	                    
	                    var tdNetword =  document.createElement('td');
	                    if(v.netword.id==1){
	                    	tdNetword.innerHTML ="<span class='network n1'></span>";
	                        }
	                        if(v.netword.id==2){
	                        	tdNetword.innerHTML ="<span class='network n2'></span>";
	                        }
	                        if(v.netword.id==3){
	                        	tdNetword.innerHTML ="<span class='network n3'></span>";
	                        }
	                        if(v.netword.id==4){
	                        	tdNetword.innerHTML ="<span class='network n3'></span>";
	                        }
	                        if(v.netword.id==5){
	                        	tdNetword.innerHTML ="<span class='network n5'></span>";
	                        }
	                        
	                    var tdCart = document.createElement('td');
	                    tdCart.innerHTML ="<a rel='nofollow'' title='Thêm vào giỏ hàng' href='${pageContext.request.contextPath}/user/addSimToCart?simId="+v.id+"' class='addcarts' data-gia='4.5'> <i class='glyphicon glyphicon-shopping-cart'> </i> </a>";
	                    
	                    tr.append(tdRealNumber);
	                    tr.append(tdPrice);
	                    tr.append(tdTotalNumber);
	                    tr.append(tdNetword);
	                    tr.append(tdCart);
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
	<%@ include file="footer.jsp"%>
</body>
</html>
