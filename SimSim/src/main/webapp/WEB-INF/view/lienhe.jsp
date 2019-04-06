<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<body>
	<div class="container-fluid">
		<div class="container-fluid tophotline hidden-xs">
			<div class="container">
				<div class="pull-left wow fadeInRight">
					<i class="glyphicon glyphicon-calendar"></i> Hôm nay: 23/03/2019
				</div>
				<div class="cart wow fadeInLeft" data-toggle="modal"
					data-target="#myModal">
					<a href="" class="addcart hidden-xs"> <i
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
									<div style="margin-top: -28px;" class="txttim">TÌM SIM SỐ
										ĐẸP</div>

								</div>
								<div class="panel-body">
									<form id="search" action="index.php" class="form-horizontal"
										style="margin: 0; padding: 0;">
										<input name="do" value="search" type="hidden"> <input
											type="hidden" name="submit" value="true" />
										<div class="form-group">
											<div class="col-md-4 col-xs-12 col-lg-4">
												<div class="row">
													<select name="network" class="form-control"
														style="font-size: 14px;">
														<option value="0">Chọn mạng di động</option>
														<option value="1">Viettel</option>
														<option value="2">Mobifone</option>
														<option value="3">Vinaphone</option>
														<option value="4">Vietnamobile</option>
														<option value="5">Gmobile</option>
													</select>
												</div>
											</div>
											<div class="col-md-4 col-xs-6 col-lg-4 showgia ">
												<div class="input-group">
													<div class="input-group-addon font-12">Giá từ:</div>
													<input name="giatu" class="form-control price" type="tel"
														placeholder="100,000" />
												</div>
											</div>
											<div class="col-md-4 col-xs-6 col-lg-4 showgia">
												<div class="input-group">
													<div class="input-group-addon font-12">Đến:</div>
													<input name="den" class="form-control price" type="tel"
														placeholder="1,000,000" />
												</div>
											</div>
										</div>
										<div class="form-group" id="tsmb1" style="padding: 8px;">
											<a href=""> <img alt="" id="anh1" height="44px"
												src="/data/favicon/logo.png"
												style="display: none; margin-left: 36px;" width="44px"></a>
											<div class="input-group">
												<input name="sim" id="sim" type="tel" value=""
													class="form-control pull-left popover-dismiss"
													placeholder="Nhập số sim bạn cần tìm" data-container="body"
													data-toggle="popover" data-placement="bottom"
													data-content=" - Sử dụng dấu <span class='red'>x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> "
													title="Hướng dẫn tìm kiếm sim" /> <span
													class="input-group-btn">
													<button class="btn btn-warning strong" id="timsimx">Tìm
														sim</button>
												</span>
											</div>
										</div>
										<div class="form-group text-center">
											<strong class="state-danger font-12">Ví dụ:</strong> &nbsp; <a
												rel="nofollow" href="*888" class="hotkey">*888</a>, <a
												rel="nofollow" href="0912*68" class="hotkey">0912*68</a>, <a
												rel="nofollow" href="090*888" class="hotkey">090*888</a>, <a
												rel="nofollow" href="0913*" class="hotkey">0913*</a>, <a
												rel="nofollow" href="*6688" class="hotkey">*6688</a>
										</div>
										<div class="form-group text-center">
											Sim 10 số <input type="radio" value="0" name="type" />&nbsp;
											&nbsp;Sim 11 số <input type="radio" value="1" name="type" />
										</div>
										<div class="form-group">
											<a href="#" class="pull-right" id="timnangcao"
												style="margin-right: 50px;"> <strong class="text-danger">Tìm
													kiếm nâng cao</strong>
											</a>
										</div>
										<div class="form-group text-center fullsearch"
											style="display: none;">
											Dãy số không gồm: <input name="n[]" value="1" type="checkbox">
											<span> 1 </span> <input name="n[]" value="2" type="checkbox">
											<span> 2 </span> <input name="n[]" value="3" type="checkbox">
											<span> 3 </span> <input name="n[]" value="4" type="checkbox">
											<span> 4 </span> <input name="n[]" value="5" type="checkbox">
											<span> 5 </span> <input name="n[]" value="6" type="checkbox">
											<span> 6 </span> <input name="n[]" value="7" type="checkbox">
											<span> 7 </span> <input name="n[]" value="8" type="checkbox">
											<span> 8 </span> <input name="n[]" value="9" type="checkbox">
											<span> 9 </span>
										</div>
										<div class="form-group text-center fullsearch"
											style="display: none;">
											<div class="col-md-4 col-xs-6 col-md-offset-2">
												<div class="input-group">
													<div class="input-group-addon font-12">Tổng điểm:</div>
													<input name="tongdiem" maxlength="2"
														class="form-control mp0 " type="tel" placeholder=" < 81" />
												</div>
											</div>
											<div class="col-md-4 col-xs-6">
												<div class="input-group">
													<div class="input-group-addon font-12">Tổng Nút:</div>
													<input name="tongnut" maxlength="2"
														class="form-control mp0 " type="tel" placeholder=" 1 -10" />
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<%@ include file="menu_left.jsp"%>
							<input name="submit" value="true" type="hidden" />
						</nav>
					</div>
				</div>
			</div>

			<div class="" id="main">
				<style>
#search_box1 {
	display: none !important;
}
</style>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h1 class="panel-title">Liên hệ</h1>
					</div>
					<div class="panel-body">
						<div class="table-condensed">
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">
										<span
										style="list-style-type: none; padding: 0px; margin: 0px;">
											<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">“Điện
												thoại đẹp chỉ nhất thời, số đẹp là mãi mãi”</strong>
									</span>
									</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">Công
										ty TNHH TM&DV Nhật Thành xin chân thành cảm ơn quý khách hàng
										đã ghé thăm</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">Toàn
										thể đội ngũ nhân viên chúng tôi luôn nỗ lực phấn đấu không
										ngừng để đạt mục tiêu trở thành trang web kinh doanh sim số
										đẹp trực tuyến <strong
										style="list-style-type: none; padding: 0px; margin: 0px;">lớn
											nhất & uy tín nhất</strong> tại Việt Nam
									</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">Cam
										kết của chúng tôi với khách hàng:</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">Giá
										rẻ nhất – giao hang nhanh nhất - Chăm sóc khách hàng tận tình
										nhất</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">Hãy
										giúp chúng tôi bằng cách nói thẳng cho chúng tôi nếu quý khách
										có bất kỳ điều gì không hài lòng, Chúng tôi mong muốn nhận
										được những góp ý chân thành từ quý khách để ngày càng hoàn
										thiện hơn.</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">
										<span
										style="list-style-type: none; padding: 0px; margin: 0px;">
											<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">“Kinh
												doanh không chỉ lời lợi nhuận mà phải lời nhân văn"</strong>
									</span>
									</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
									<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">
										<span
										style="list-style-type: none; padding: 0px; margin: 0px;">
											<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">-----------------
										</strong>
									</span>
									</span> <a href=""
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(0, 80, 148);">
										<span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">http://muasim24h.com</span>
									</a> <span
										style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(128, 0, 0);">
										<span
										style="list-style-type: none; padding: 0px; margin: 0px;">
											<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">
												-----------------</strong>
									</span>
									</span>
								</p>
								<p
									style="list-style-type: none; padding: 0px; margin-bottom: 0px; margin-left: 40px;">
								</p>
							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
								<div style="list-style-type: none; padding: 0px; margin: 0px;">
									<div
										style="list-style-type: none; padding: 0px; margin: 0px 0px 0px 40px;">
										<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">
											<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">Chi
												nhánh tại TPHCM <br /> Số 127B-A5/6 Đinh Tiên Hoàng, P3, Q
												Bình Thạnh, TPHCM
										</strong> <br /> Chi nhánh tại Hà Nội,
										</strong>
									</div>
									<div
										style="list-style-type: none; padding: 0px; margin: 0px 0px 0px 40px;">
										<strong
											style="list-style-type: none; padding: 0px; margin: 0px;">Số
											226 Thanh Vỵ, Tx Sơn Tây, Hà Nội.</strong>
									</div>
								</div>
								<div
									style="list-style-type: none; padding: 0px; margin: 0px 0px 0px 40px;">
								</div>
								<div
									style="list-style-type: none; padding: 0px; margin: 0px 0px 0px 40px;">
								</div>

							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px 0px 0px 40px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px 0px 0px 40px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px 0px 0px 40px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px 0px 0px 40px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
								<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">Hotline:
									0961.003.003 - 0996.003.003 - 0966.86.1999 - 0911.95.6868<br />Khiếu
									nại / Góp ý: 0984.59.8888 - 0996.44.8888
								</strong>
							</div>
							<div
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px 0px 0px 40px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal;">
								<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">Email:
								</strong> <a href=""
									style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(0, 80, 148);">
									<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">
										<span class="__cf_email__" data-cfemail="">[email&#160;protected]</span>
								</strong>
								</a>
							</div>
							<p
								style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal; margin-left: 40px;">
								<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">Webside:
								</strong> <a href=""
									style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(0, 80, 148);">
									<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">www.muasim24h.com</strong>
								</a><strong
									style="list-style-type: none; padding: 0px; margin: 0px;">
									- </strong> <a href=""
									style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(0, 80, 148);">
									<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">www.</strong>
								</a> <a href=""
									style="list-style-type: none; padding: 0px; margin: 0px; color: rgb(0, 80, 148);">
									<strong
									style="list-style-type: none; padding: 0px; margin: 0px;">muasim24h.vn</strong>
								</a>
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Tin liên quan</h2>
					</div>
					<div class="panel-body">
						<ul style="max-height: 300px; overflow: auto;">
							<li><a href="">Phong Thủy</a></li>
							<li><a href="">Bán sim trả góp</a></li>
							<li><a href="">Cầm cố sim</a></li>
							<li><a href="">Thu Mua Sim</a></li>
							<li><a href="">Thanh toán</a></li>
							<li><a href="">Giới thiệu</a></li>
							<li><a href="">Hướng dẫn</a></li>
							<li><a href="">Liên hệ</a></li>
						</ul>
					</div>
				</div>
			</div>

			<%@ include file="menu_right.jsp"%>

		</div>
	</div>
	<script src="<c:url value="/resource/js/sim.js"/>"
		type="text/javascript"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>
