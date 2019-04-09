<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu left</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.0/css/all.css"
	integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y"
	crossorigin="anonymous">
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />

<style>
.menu-r {
	margin: -15px;
	padding: 0;
	width: 100%;
}

.menu-r li:hover {
	background: #fdfafa;
}

.menu-r li {
	list-style: none;
	width: 100%;
	padding: 8px 15px;
	border-bottom: 1px solid #ddd;
}

.menu-r>li>a {
	font-weight: bold;
	display: block;
}

.menu-r>li:last-child {
	border: none;
	margin-bottom: -10px;
	display: block;
}

.menu-r>li:hover:after {
	float: right;
}

.menu-r>li>ul {
	display: none;
}

.menu-r>li>ul>li {
	padding: 5px 10px;
}

.menu-r>li:hover>ul {
	display: block;
	margin-top: -28px;
	width: 200px;
	background: #fff;
	padding: 0;
	margin-left: 200px;
	position: absolute;
	z-index: 10000;
	border-radius: 0 6px 6px 0;
	box-shadow: 2px 2px 4px #ddd;
}

.menu-r>li>a {
	font-weight: bold;
	text-transform: uppercase;
}
/*dưới*/
#menunew {
	padding-left: 15px;
	padding-top: 15px;
}

#menunew>ul>li>ul>li {
	display: inline-block;
	vertical-align: top;
	width: 50%;
	padding: 0;
	margin: 0;
}

#menunew>ul>li>ul>li>a {
	display: none;
}

#menunew>ul>li>ul {
	position: absolute;
	margin-left: 170px;
	margin-top: -30px;
	padding: 0;
	width: 500px;
}

#menunew>ul>li>ul>li>ul {
	padding: 0;
	margin: 0;
}
</style>
</head>
<body>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		<ul class="nav navbar-nav">
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="net"></span> <a href="${pageContext.request.contextPath}/sim/findSim?networdId=3">VinaPhone</a> <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu mega-menu" role="menu">
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tứ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ngũ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lục Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lộc Phát
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Thần Tài
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đôi
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lặp
							</a></li>
						</ul>
					</li>
					<li class="mega-menu-column">
						<ul>

							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đối
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Gánh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đảo
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đặc Biệt
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ông Địa
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đầu Số Cổ
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Năm Sinh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Năm sinh dd/mm/yy
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 2
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 3
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 4
							</a></li>
						</ul>
					</li>
				</ul></li>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="net"></span> <a href="${pageContext.request.contextPath}/sim/findSim?networdId=2">Mobiphone<a></a> <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu mega-menu" role="menu">
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tứ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ngũ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lục Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lộc Phát
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Thần Tài
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đôi
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lặp
							</a></li>
						</ul>
					</li>
					<li class="mega-menu-column">
						<ul>

							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đối
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Gánh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đảo
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đặc Biệt
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ông Địa
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đầu Số Cổ
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Năm Sinh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Năm sinh dd/mm/yy
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 2
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 3
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 4
							</a></li>
						</ul>
					</li>
				</ul></li>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="net"></span> <a href="${pageContext.request.contextPath}/sim/findSim?networdId=1">Viettel</a> <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu mega-menu" role="menu">
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tứ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ngũ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lục Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lộc Phát
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Thần Tài
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đôi
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lặp
							</a></li>
						</ul>
					</li>
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đối
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Gánh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đảo
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đặc Biệt
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ông Địa
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đầu Số Cổ
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Năm Sinh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Năm sinh dd/mm/yy
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 2
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 3
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 4
							</a></li>
						</ul>
					</li>
				</ul></li>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="net"></span> <a href="${pageContext.request.contextPath}/sim/findSim?networdId=4">Vietnamobile</a> <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu mega-menu" role="menu">
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tứ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ngũ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lục Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lộc Phát
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Thần Tài
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đôi
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lặp
							</a></li>
						</ul>
					</li>
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đối
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Gánh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đảo
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đặc Biệt
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ông Địa
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đầu Số Cổ
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Năm Sinh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Năm sinh dd/mm/yy
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 2
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 3
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 4
							</a></li>
						</ul>
					</li>
				</ul></li>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="net"></span> <a href="${pageContext.request.contextPath}/sim/findSim?networdId=5">GMobile</a> <span
					class="caret"></span>
			</a>
				<ul class="dropdown-menu mega-menu" role="menu">
					<li class="mega-menu-column">
						<ul>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tứ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ngũ Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lục Quý
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lộc Phát
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Thần Tài
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tiến Đôi
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Đơn
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Tam Hoa Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Kép
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Lặp
							</a></li>
						</ul>
					</li>
					<li class="mega-menu-column">
						<ul>

							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đối
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Gánh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đảo
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đặc Biệt
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Ông Địa
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Đầu Số Cổ
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Năm Sinh
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Năm sinh dd/mm/yy
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 2
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 3
							</a></li>
							<li><a href=""> <i class="fas fa-hand-point-right"></i>
									Sim Taxi Lặp 4
							</a></li>
						</ul>
					</li>
				</ul></li>

		</ul>
	</div>
	<div class="clearfix"></div>
	</nav>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo giá tiền
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href="">Từ 100 Triệu trở lên</a> <a
				class="list-group-item" href="">Từ 50Triệu đến 100 Triệu</a> <a
				class="list-group-item" href="">Từ 20Triệu đến 50 Triệu</a> <a
				class="list-group-item" href="">Từ 10Triệu đến 20 Triệu</a> <a
				class="list-group-item" href="">Từ 5Triệu đến 10 Triệu</a> <a
				class="list-group-item" href="">Từ 2Triệu đến 5 Triệu</a> <a
				class="list-group-item" href="">Từ 1Triệu đến 2 Triệu</a> <a
				class="list-group-item" href="">Từ 500,000Đ đến 1 Triệu</a> <a
				class="list-group-item" href="">Từ 500,000Đ trở xuống</a>
		</div>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo thể loại
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href=""> <strong>Sim Tứ Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lục Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Ngũ Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lộc
					Phát</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Thần
					Tài</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim ông địa</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tiến
					đơn</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Tiến
					đôi</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 2</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 3</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 4</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lặp</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim kép</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim đối</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Đảo</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim gánh</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Đặc
					Biệt</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Năm
					Sinh</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim đầu số
					cổ</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tam Hoa
					Đơn</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tam Hoa
					Kép</strong>
			</a> <a class="list-group-item" href=""> <strong>Năm sinh
					dd/mm/YY</strong>
			</a>
		</div>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo đầu số
			</h2>
		</div>
		<ul class="list-group">
			<a class="list-group-item" href="">Đầu Số 096 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 097 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 098 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 091 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 094 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 090 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 093 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 092 Vietnamobile</a>
			<a class="list-group-item" href="">Đầu Số 099 Gmobile</a>
			<a class="list-group-item" href="">Đầu Số 086 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 088 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 089 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 032 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 033 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 034 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 035 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 036 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 037 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 038 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 039 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 081 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 082 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 083 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 084 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 085 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 070 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 076 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 077 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 078 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 079 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 052 Vietnamobile</a>
			<a class="list-group-item" href="">Đầu Số 056 Vietnamobile</a>
			<a class="list-group-item" href="">Đầu Số 058 Vietnamobile</a>
			<a class="list-group-item" href="">Đầu Số 059 Gmobile</a>
		</ul>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim tứ quý
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href="">Sim Tứ Quý 9999</a> <a
				class="list-group-item" href="">Sim Tứ Quý 8888</a> <a
				class="list-group-item" href="">Sim Tứ Quý 7777</a> <a
				class="list-group-item" href="">Sim Tứ Quý 6666</a> <a
				class="list-group-item" href="">Sim Tứ Quý 5555</a> <a
				class="list-group-item" href="">Sim Tứ Quý 4444</a> <a
				class="list-group-item" href="">Sim Tứ Quý 3333</a> <a
				class="list-group-item" href="">Sim Tứ Quý 2222</a> <a
				class="list-group-item" href="">Sim Tứ Quý 1111</a> <a
				class="list-group-item" href="">Sim Tứ Quý 0000</a>
		</div>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim tam hoa
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href="">Sim Tam Hoa 999</a> <a
				class="list-group-item" href="">Sim Tam Hoa 888</a> <a
				class="list-group-item" href="">Sim Tam Hoa 777</a> <a
				class="list-group-item" href="">Sim Tam Hoa 666</a> <a
				class="list-group-item" href="">Sim Tam Hoa 555</a> <a
				class="list-group-item" href="">Sim Tam Hoa 444</a> <a
				class="list-group-item" href="">Sim Tam Hoa 333</a> <a
				class="list-group-item" href="">Sim Tam Hoa 222</a> <a
				class="list-group-item" href="">Sim Tam Hoa 111</a> <a
				class="list-group-item" href="">Sim Tam Hoa 000</a>
		</div>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim đuôi số tiến
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href="">Sim Tiến Đuôi 6789</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 5678</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 4567</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 3456</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 2345</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 1234</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 0123</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 3579</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 2468</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 1357</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 0246</a> <a
				class="list-group-item" href="">Sim Tiến Đuôi 1368</a>
		</div>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">Tìm sim phong thủy</h2>
		</div>
		<div class="panel-body">
			<form method="" action="">
				<input name="do" value="search" type="hidden" />
				<div class="form-group">
					<label>Tổng nút</label> <input name="tongnut"
						class="form-control input-sm" placeholder="Tổng nút 1-10"
						type="text">
				</div>
				<div class="form-group">
					<label>Tổng điểm</label> <input name="tongdiem"
						class="form-control input-sm" placeholder="Tổng điểm < 81"
						type="text">
				</div>
				<div class="row form-group"
					style="font-size: 11px; font-weight: normal;">
					<div class="col-xs-12 text-center">
						<label> <input name="type" checked="checked" value="0"
							type="radio"> Tất cả
						</label> <label> <input name="type" value="0" type="radio">
							10 Số
						</label> <label> <input name="type" value="1" type="radio">
							11 Số
						</label>
					</div>
					<div class="col-xs-12 text-center margin-top">
						<input class="btn btn-primary btn-sm" value="Tìm sim"
							type="submit">
					</div>
				</div>
				<input type="hidden" name="submit" value="true" />
			</form>
		</div>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-search"> </i> Tìm sim năm sinh
			</h2>
		</div>
		<div class="panel-body">
			<form method="" action="">
				<input name="do" value="search" type="hidden" />
				<div class="form-group">
					<label>Chọn ngày</label> <input name="date" type="text"
						class="form-control input-sm datepicker" placeholder="dd/mm/yyyy"
						type="text">
				</div>
				<div class="row form-group">
					<div class="col-xs-12 text-center">
						<label> <input name="dtp" checked="checked" value="0"
							type="radio"> Tất cả
						</label> <label> <input name="dtp" value="2" type="radio">
							m/d/y
						</label> <label> <input name="dtp" value="1" type="radio">
							19xx
						</label>
					</div>
					<div class="col-xs-12 text-center margin-top">
						<input class="btn btn-primary btn-sm" value="Tìm sim"
							type="submit">
					</div>
				</div>
			</form>
</body>
</html>
