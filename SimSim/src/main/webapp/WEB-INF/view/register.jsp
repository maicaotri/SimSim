<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="<c:url value="/resource/css/register.css"/>"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<c:url value="/resource/fonts/material-icon/css/material-design-iconic-font.min.css"/>">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/resource/js/validator.js"/>"
	type="text/javascript"></script>
<link
	href="<c:url value="/resource/bootstrap-3.4.1-dist/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css" />
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
								alt="sing up image" width="580px" margin-top="30%">
						</figure>
						<a href="" class="signup-image-link">Create an account</a>
					</div>
					<div class="signup-form">
						<h2 class="form-title">
							<strong>Sign up</strong>
						</h2>
						<form method="POST" class="register-form" id="register-form" action="${pageContext.request.contextPath}/createUser"
							data-toggle="validator" role="form">
							<div class=row>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="inputFirst"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="text" name="fName" id="inputFirst"
											placeholder="First Name" required />
										<div class="help-block with-errors" style="color: red"></div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label for="inputLastname"><i
											class="zmdi zmdi-account material-icons-name"></i></label> <input
											type="text" name="lName" id="inputLastname"
											placeholder="Last Name" required />
										<div class="help-block with-errors" style="color: red"></div>
									</div>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Username" required />
								<div class="help-block with-errors" style="color: red"></div>
								<p id="usernameErr" style="color: red"></p>
							</div>
							<div class="form-group">
								Sex <input type="radio" name="sex" id="inputSex" class="agree-term" required /> 
									<label for="inputSex" class="label-agree-term">Male</label> 
									<input type="radio" name="sex" id="inputSex" class="agree-term" required />
								<label for="inputSex" class="label-agree-term">Female</label>
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<div class="form-group">
								<label for="inputEmail"><i class="zmdi zmdi-email"></i></label>
								<input type="email" name="email" id="inputEmail"
									placeholder="Your Email" required />
								<div class="help-block with-errors" style="color: red"></div>
								<p id="emailErr" style="color: red"></p>
							</div>
							<div class="form-group">
								<label for="inputPass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="inputPass" minlength="6"
									placeholder="Password" required />
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<div class="form-group">
								<label for="inputRepass"><i
									class="zmdi zmdi-lock-outline"></i></label> <input type="password"
									name="rePassword" id="inputRepass" minlength="6"
									placeholder="Repeat your password" required />
								<div class="help-block with-errors" style="color: red"
									id="message"></div>
							</div>
							<div class="form-group">
								<label for="inputPhone"><i class="zmdi zmdi-phone"></i></label>
								<input type="number" name="phone" id="inputPhone"
									minlength="10" maxlength="10" placeholder="Your number phone"
									required />
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<div class="form-group">
								<label for="inputAddress"><i class="zmdi zmdi-home"></i></label>
								<input type="text" name=address id="inputAddress"
									placeholder="Your address" required />
								<div class="help-block with-errors" style="color: red"></div>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" 
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
		$('#inputPass').on(
				'keyup',
				function() {
					if ($('#inputPass').val() == $('#inputRepass').val()) {
						$('#message').html('');
					} else {
						if ($('#inputRepass').val().length() > 0) {
							$('#message').html('Mật khẩu nhập lại không trùng')
									.css('color', 'red');
							$('#message').html('');
						}
					}
				});
		$('#inputRepass').on(
				'keyup',
				function() {
					if ($('#inputPass').val() == $('#inputRepass').val()) {
						$('#message').html('');
					} else {
						if ($('#inputPass').val() != $('#inputRepass').val()) {
						$('#message').html('Mật khẩu nhập lại không trùng')
								.css('color', 'red');
						}
					}
				});
		$(document).ready(function() {
			$('#inputEmail').keyup(function() {
				checkEmailIsExist();
			});
			
			$('#username').keyup(function() {
				checkUsernameIsExist();
			});
		});
		
		
		function checkUsernameIsExist(){
	        $.ajax({
	            type: "POST", 
	            url: '${pageContext.request.contextPath}/checkUsername', 
	            dataType: 'json',
	             data: {
	            	 username: $('#username').val()
	             },
	            success: function(data) {
	            	if(data.number >0){
	            		$("#usernameErr").text("Tài khoản này đã tồn tại");
	            	}else{
	            		$("#usernameErr").text("");
	            	}
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
		
		function checkEmailIsExist(){
	        $.ajax({
	            type: "POST", 
	            url: '${pageContext.request.contextPath}/checkEmail', 
	            dataType: 'json',
	             data: {
	            	 email: $('#inputEmail').val()
	             },
	            success: function(data) {
	            	if(data.number >0){
	            		$("#emailErr").text("Email này đã được đăng ký");
	            	}else{
	            		$("#emailErr").text("");
	            	}
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