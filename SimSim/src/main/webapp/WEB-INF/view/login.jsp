<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="<c:url value="/resource/css/register.css"/>"
	rel="stylesheet" type="text/css" />
<!-- <link rel="stylesheet" -->
<%-- 	href="<c:url value="/resource/fonts/material-icon/css/material-design-iconic-font.min.css"/>"> --%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/resource/js/validator.js"/>"
	type="text/javascript"></script>
</head>
<body>
	<div class="main"
		style="background-image: url(<c:url value="/resource/images/nen.jpg"/>);">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="<c:url value="/resource/images/simbn.jpg"/>"
								alt="sing up image">
						</figure>
						<a href="${pageContext.request.contextPath}/register" class="signup-image-link">Create an account</a>
					</div>

<c:url value="/login" var="url"></c:url>
					<div class="signin-form">
						<h2 class="form-title">Sign in    </h2>
						<form class="register-form" id="login-form" action="${url}" method="post"
							data-toggle="validator" role="form">
							<div class="form-group">
								<label for="inputName"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<input type="text" name="username" id="inputName" style="font-size: medium;"
									placeholder="Username" required />
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<div class="form-group">
								<label for="inputPassword"><i class="zmdi zmdi-lock"></i></label>
								<input type="password" name="password" data-minlength="5" style="font-size: medium;"
									id="inputPassword"
									data-error="must enter minimum of 5 characters"
									placeholder="Password" required />
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<span style="color: gray">${mess}</span>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>