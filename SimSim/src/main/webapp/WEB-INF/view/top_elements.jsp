<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="container-fluid tophotline hidden-xs">
	<div class="container">
		<div class="pull-left wow fadeInRight">
			<i class="glyphicon glyphicon-calendar"></i>
		</div>
		<div class="cart wow fadeInLeft">
			<security:authorize access="hasRole('USER')">
				<a href="${pageContext.request.contextPath}/user/cart"
					class="addcart hidden-xs"> <i
					class="glyphicon glyphicon-shopping-cart font-12 hidden-xs"></i>
					Giỏ hàng <span class="hidden-xs badge" id="cart">${listCart.size()}</span>
				</a>
				<a href="${pageContext.request.contextPath}/user/bill"
					class="addcart hidden-xs"> <i
					class="glyphicon glyphicon-shopping-cart font-12 hidden-xs"></i>
					Đơn hàng <span class="hidden-xs badge" id="cart"></span>
				</a>
			</security:authorize>
			<security:authorize access="hasRole('ADMIN')">
				<a href="${pageContext.request.contextPath}/admin" class="nav-link"> <button class="btn btn-warning btn-sm">Admin
						page</button></a>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<security:authentication property="principal" var="user" />
				<label class="hidden-xs" style="color: yellow;">${user.username}</label>
				<a href="${pageContext.request.contextPath}/dangxuat"
					class="hidden-xs"> Đăng xuất </a>
			</security:authorize>
			<security:authorize access="isAuthenticated()==false">
				<a href="${pageContext.request.contextPath}/dangnhap"
					class="hidden-xs"> Đăng nhập </a>
			</security:authorize>

		</div>
	</div>
</div>
