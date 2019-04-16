<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.2.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.js"></script>
</head>

<body>

<table id="table" data-toggle="table" data-pagination="true"
										data-search="true" data-show-columns="true"
										data-show-pagination-switch="true" data-show-refresh="true"
										data-key-events="true" data-show-toggle="true"
										data-resizable="false" data-cookie="true"
										data-cookie-id-table="saveId" 
										data-click-to-select="true" data-toolbar="#toolbar">
										<thead id="appendData">
											<tr>
												<th data-field="state" ></th>
												<th data-field="id">Sim</th>
												<th data-field="price" >Giá tiền</th>
												<th data-field="name" >Mạng</th>
												<th data-field="email" >Tổng nút</th>
												<th data-field="phone" >Tổng điểm</th>
												<th data-field="task" >Tình trạng</th>
												<th data-field="enabled" >Khả dụng</th>
											</tr>
										</thead>
										<tbody id="myContent">
											
								</tbody>
							</table>
<script>
$(document).ready(function() {
$.ajax({
dataType: "jsonp",
url: "${pageContext.request.contextPath}/sim/findSimDetail",
jsonp: "$callback",
success: showData
});
});

function showData(data) {
// Use the template
$("#myTemplate").tmpl(data).appendTo("#myContent");
}
</script>

<script id="myTemplate" type="text/x-jquery-tmpl">
{{each value}}
								<tr>
								<td></td>
								<td><a href="" title="${realNumber}" rel="nofollow"><strong class="font-16 sim">$realNumber}</strong>
								</a></td>
								<td> <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />VNĐ</td>
								<td>${netword.name}</td>
								<td>${score}</td>
								<td>${sumOfNumbers}</td>
								<td>
								<c:if test = "${sold == 0}">Còn</c:if>
								<c:if test = "${sold == 1}">Đã bán</c:if>
								</td>
								<td>
								<c:if test = "${enabled == 0}">Vô hiệu hóa</c:if>
								<c:if test = "${enabled == 1}">Khả dụng</c:if>
								</td>
								</tr>
{{/each}}
</script>
</body>
</html>