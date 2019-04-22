<%-- 
    Document   : trangchu
    Created on : Mar 23, 2019, 9:35:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đặt mua sim</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/datsim.css" rel="stylesheet" type="text/css" />
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
				<div class="banner hidden-xs" style="vertical-align: top;">
					<!--<img alt="" class="img-responsive img-fluid" height="186" src="images/banner.jpg" width="1020" />-->
				</div>
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
				<script src="js/datsim.js" type="text/javascript"></script>
				<script src="js/datsim1.js" type="text/javascript"></script>
				<style>
#search_box1 {
	display: none !important;
}
</style>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Đặt mua sim</h2>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" method="" id="ordered" action=""
							onsubmit="return checkorder()">
							<table class="table table-hover table-condensed table-bordered">
								<thead>
									<tr>
										<th class="active text-center col-md-1">STT</th>
										<th class="active text-center">Số sim</th>
										<th class="active"></th>
									</tr>
								</thead>
								<tr>
									<td class="center"></td>
									<td>
										<div class="">
											<strong style="size: 16px;">Sim: </strong> <strong
												style="color: red; font-size: 18px;">0868.57.1989</strong> <br>
											<strong>Giá: 4,500,000 </strong>VNĐ <br />( bốn triệu năm
											trăm nghìn đồng )<br>
										</div>

									</td>
									<td class="text-center"><a href="" class="delcart"
										data-sim="0868571989"> <i
											class="glyphicon glyphicon-trash text-danger"></i>
									</a></td>
								</tr>
								<tr>
									<td colspan="4" class="active">
										<h5 class="pull-right">
											Tổng tiền: <span id="total">4,500,000</span> VNĐ
										</h5>
									</td>
								</tr>
							</table>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Họ và tên: <span
											class="red">(*)</span></label>
										<div class="col-md-7">
											<input name="fullname" class="form-control" />
										</div>
									</div>
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Điện thoại: <span
											class="red">(*)</span>
										</label>
										<div class="col-md-7">
											<input name="phone" type="tel" class="form-control" />
										</div>
									</div>
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Email: <span
											class="red">(*)</span></label>
										<div class="col-md-7">
											<input name="fix[email]" class="form-control">
										</div>
									</div>
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Tỉnh/TP: <span
											class="red">(*)</span>
										</label>
										<div class="col-md-7">
											<input type="hidden" name="city" /> <input type="hidden"
												name="qh" /> <input type="hidden" name="px" /> <select
												id="city" class="form-control city">
												<option value="0">Chọn Tỉnh/TP</option>
												<option value="01">Hà Nội</option>
												<option value="79">Hồ Chí Minh</option>
												<option value="89">An Giang</option>
												<option value="77">Bà Rịa - Vũng Tàu</option>
												<option value="24">Bắc Giang</option>
												<option value="06">Bắc Kạn</option>
												<option value="95">Bạc Liêu</option>
												<option value="27">Bắc Ninh</option>
												<option value="83">Bến Tre</option>
												<option value="74">Bình Dương</option>
												<option value="70">Bình Phước</option>
												<option value="60">Bình Thuận</option>
												<option value="52">Bình Định</option>
												<option value="96">Cà Mau</option>
												<option value="92">Cần Thơ</option>
												<option value="04">Cao Bằng</option>
												<option value="64">Gia Lai</option>
												<option value="02">Hà Giang</option>
												<option value="35">Hà Nam</option>
												<option value="42">Hà Tĩnh</option>
												<option value="30">Hải Dương</option>
												<option value="31">Hải Phòng</option>
												<option value="93">Hậu Giang</option>
												<option value="17">Hòa Bình</option>
												<option value="33">Hưng Yên</option>
												<option value="56">Khánh Hòa</option>
												<option value="91">Kiên Giang</option>
												<option value="62">Kon Tum</option>
												<option value="12">Lai Châu</option>
												<option value="68">Lâm Đồng</option>
												<option value="20">Lạng Sơn</option>
												<option value="10">Lào Cai</option>
												<option value="80">Long An</option>
												<option value="36">Nam Định</option>
												<option value="40">Nghệ An</option>
												<option value="37">Ninh Bình</option>
												<option value="58">Ninh Thuận</option>
												<option value="25">Phú Thọ</option>
												<option value="54">Phú Yên</option>
												<option value="44">Quảng Bình</option>
												<option value="49">Quảng Nam</option>
												<option value="51">Quảng Ngãi</option>
												<option value="22">Quảng Ninh</option>
												<option value="45">Quảng Trị</option>
												<option value="94">Sóc Trăng</option>
												<option value="14">Sơn La</option>
												<option value="72">Tây Ninh</option>
												<option value="34">Thái Bình</option>
												<option value="19">Thái Nguyên</option>
												<option value="38">Thanh Hóa</option>
												<option value="46">Thừa Thiên Huế</option>
												<option value="82">Tiền Giang</option>
												<option value="84">Trà Vinh</option>
												<option value="08">Tuyên Quang</option>
												<option value="86">Vĩnh Long</option>
												<option value="26">Vĩnh Phúc</option>
												<option value="15">Yên Bái</option>
												<option value="48">Đà Nẵng</option>
												<option value="66">Đắk Lắk</option>
												<option value="67">Đắk Nông</option>
												<option value="11">Điện Biên</option>
												<option value="75">Đồng Nai</option>
												<option value="87">Đồng Tháp</option>
											</select>
										</div>
									</div>
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Địa chỉ: <span
											class="red">(*)</span>
										</label>
										<div class="col-md-7">
											<textarea name="address" class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group form-group-sm">
										<label class="control-label col-md-4">Ghi chú:</label>
										<div class="col-md-7">
											<textarea class="form-control" name="note"
												style="height: 50px;"></textarea>
										</div>
									</div>
									<div class="form-group form-group-sm">
										<div class="col-md-12">
											<div class="text-center">
												<button name="submit" class="btn btn-default ">Đặt
													mua</button>
												<button type="reset" class="btn btn-primary">Làm
													lại</button>
											</div>
										</div>
									</div>
						</form>
					</div>
					<div class="col-md-4 hidden-xs">
						<ul>
							<li>Sim mới chưa c&oacute; người sử dụng</li>
							<li>Hưởng c&aacute;c khuyến m&atilde;i hiện h&agrave;nh của
								nh&agrave; mạng</li>
							<li>Kh&aacute;ch h&agrave;ng sẽ được đăng k&yacute;
								ch&iacute;nh chủ khi mua sim</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="panel ">
			<div class="panel-body">
				<p style="text-align: center">
					<strong>Hướng dẫn mua sim 0868571989 :</strong>
				</p>
				<p></p>
				<p style="margin-left: 45px">
					Để việc mua sim <strong></strong> <strong>0868571989 </strong>
					nhanh chóng và thuận tiện , chúng tôi sẽ gọi điện tư vấn Quý Khách
					hình thức <strong>Mua Sim</strong> nhanh nhất,với thủ tục đơn giản
					nhất sau khi nhận được thông tin từ Quý Khách<br /> 1. Giao sim
					trực tiếp tận nơi<br />- Nhân viên <strong>Muasim24h.vn</strong>
					giao sim tận nhà và đăng ký chính chủ tại Hà Nội Và Thành Phố Hồ
					Chí Minh và 1 số tỉnh thành có chi nhánh của công ty trên Toàn Quốc<br />2.
					Chuyển sim qua Bưu Điện,Viettel Post (nhận được sim mới thanh toán
					tiền, COD) <br />Sau khi nhận thông tin <strong>Đặt Mua </strong>
					sim từ Quý Khách, nhân viên <strong>Muasim24h.vn</strong> sẽ tiến
					hành chuyển sim qua bưu điện, thời gian tối đa 48 tiếng sẽ nhận
					được sim, trường hợp thời gian lâu hơn quý khách vui lòng liên hệ
					nhân viên kiểm tra lại<br /> <strong>Lưu ý :</strong> Quy định bưu
					điện đưa ra là thanh toán tiền sim rồi mới bóc bưu phầm, nên quý
					khách vui lòng thanh toán trước cho nhân viên bưu điện rồi Call
					Hotline 24/7 của chúng tôi 0961003003 để kích hoạt sim<br />3.
					Đăng ký chính chủ sim <strong> 0868571989</strong> <br />- Quý
					Khách vui lòng cung cấp 2 mặt chứng minh thư Hoặc thẻ căn cước và 1
					ảnh chân dung có thể chụp bằng điện thoại (Theo quy định bộ Thông
					Tin và Truyền Thông để bảo vệ quyền lợi chính chủ sim) <br />- Sau
					khi nhận đủ thủ tục, giấy tờ nhân viên sẽ đăng ký chính chủ cho quý
					khách <br />Quý Khách Gửi Thông Tin Vào Hotline 24/7: 0961003003
					(imessage, viber, zalo, facebook…) <br />Chúc Quý Khách Gặp Nhiều
					May Mắn Khi Sử Dụng Sim <strong>0868571989</strong> <br /> <strong>Lưu
						ý : Quý Khách Vui Lòng Điền Đầy Đủ Thông Tin vào những ô có dấu
						(*) Và Ấn Vào Nút “ ĐẶT MUA”</strong> <br />
					<br />Rất hân hạnh được phục vụ quí khách! <strong><br />Liên
						hệ:</strong><br /> <strong>CÔNG TY TNHH NAM NHẬT THÀNH</strong> <br /> <strong>127B-A5/6
						Đinh Tiên Hoàng, P3, Bình Thạnh, Tp.HCM<br />226 Thanh Vỵ, P Sơn
						Lộc, Tx Sơn Tây, Hà Nội.
					</strong> <br />
					<strong>Hotline: 0961003003 - 0868551666 - 0868552666 -
						0996003003 - 0995003003</strong> <strong></strong><br /> <strong>Fanpage:
						<a href="" target="_blank">https://www.facebook.com/muasim24h.vn/</a>
					</strong> <strong></strong><br /> <strong>Quản lý: Mr Thắng:
						0984598888 - 0996448888</strong>
				</p>
				<p style="margin-left: 45px">
					<strong></strong>
				</p>
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
	<script src="js/sim.js" type="text/javascript"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>
