<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Load Sim</title>
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />
<link
	href="<c:url value="/resource/bootstrap-3.4.1-dist/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
<script src="<c:url value="/resource/js/jquery-3.4.0.min.js"/>"
	type="text/javascript"></script>
	

<script type="text/javascript">

</script>
</head>
<body>
<button id="loadData" class="btn btn-default">Load Data</button>
	<div class="clearfix"></div>
	<div class="panel panel-default">
		<table class="table table-bordered table-condensed" id="sim_table">
			<thead>
				<tr>
					<th class="active">Sim</th>
					<th class="active sortprice">Giá tiền <span class="glyphicon">
							<a class="pricetoogle" href=""> <span
								class="glyphicon-arrow-up"></span> <span
								class="glyphicon glyphicon-arrow-down"></span>
						</a>
					</span>
					</th>
					<th class="active text-center">Tổng</th>
					<th class="active">Mạng di dộng</th>
					<th class="active text-center">Đặt mua</th>
					<th class="active text-center text-center">Giỏ hàng</th>
				</tr>
			</thead>
			<tbody>
				<td>
				<td colspan="8">
					<div id="loc1" style="float: right;">
						<form method="POST" class="form-inline" id="loc">
							<strong>Lọc danh sách:</strong> <select name="loctheogia"
								Class="locgia from-control">
								<option value="" selected="selected">Mọi mức giá</option>
								<option value="">Dưới 1 Triệu</option>
								<option value="">Từ 1 -2 Triệu</option>
								<option value="">Từ 2 - 3 Triệu</option>
								<option value="">Từ 3 - 5 Triệu</option>
								<option value="">Từ 5 - 8 Triệu</option>
								<option value="">Từ 8 - 10 Triệu</option>
								<option value="">Từ 10 -15 Triệu</option>
								<option value="">Từ 15 - 20 Triệu</option>
								<option value="">Trên 20 Triệu</option>
							</select> <select name="loctheomang" class="locmang from-control">
								<option value="" class="locmang from-control option">Mọi
									mạng</option>
								<option value="" class="locmang from-control option">Viettel</option>
								<option value="" class="locmang from-control option">Mobifone</option>
								<option value="" class="locmang from-control option">Vinaphone</option>
								<option value="" class="locmang from-control option">Vietnamobile</option>
								<option value="" class="locmang from-control option">Gmobile</option>
							</select>
						</form>

					</div>
				</td>
				</td>
				<tr>
					<td id="realNumber"></td>
					<td class="font-13" style="color: black;"></td>
					<td class="text-center"><span class="badge" ></span></td>
					<td class="text-center"><span class="network n"></span></td>
					<td class="text-center"><a rel="nofollow" href=""
						class="btn btn-xs btn-warning ">Đặt mua</a></td>
					<td class="text-center"><a rel="nofollow"
						title="Thêm sim  vào giỏ hàng" href="" class="addcarts"
						data-sim="" data-gia="4.5"> <i
							class="glyphicon glyphicon-shopping-cart"></i>
					</a></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" class="text-center">
						<ul class="pagination pagination-sm">
							<li><span class="inactive" href="#">Trước</span></li>
							<li class="active"><a title="Go to page 1 of 140"
								class="current" href="">[1]</a></li>
							<li><a class="paginate" title="Go to page 2 of 200" href="">2</a></li>
							<li><a class="paginate" title="Go to page 3 of 200" href="">3</a></li>
							<li><a class="paginate" title="Go to page 4 of 200" href="">4</a></li>
							<li><a class="paginate" title="Go to page 5 of 200" href="">5</a></li>
							<li><a class="paginate" title="Go to page 6 of 200" href="">6</a></li>
							<li><a class="paginate" title="Go to page 7 of 200" href="">...</a></li>
							<li><a class="paginate" title="Go to page 200 of 200"
								href="">200</a></li>
							<li><a class="paginate" href="/?page=2">Tiếp theo</a></li>
						</ul>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	</div>

	</div>
	</div>
	<%-- 	<script src="<c:url value="/resource/js/sim.js"/>" --%>
	<!-- 		type="text/javascript"></script> -->

</body>
</html>
