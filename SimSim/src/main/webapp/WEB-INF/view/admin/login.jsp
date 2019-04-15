<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resource/admin/img/favicon.ico"/>">
        <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resource/admin/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/morrisjs/morris.css">
        <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
        <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
        <link rel="stylesheet" href="css/form/all-type-forms.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <div class="error-pagewrap">
            <div class="error-page-int">
                <div class="text-center m-b-md custom-login">
                    <h3>PLEASE LOGIN TO APP</h3>
                    <p>This is the best app ever!</p>
                </div>
                <div class="content-error">
                    <div class="hpanel">
                        <div class="panel-body">
                            <form action="#" id="loginForm">
                                <div class="form-group">
                                    <label class="control-label" for="username">Username</label>
                                    <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">
                                    <span class="help-block small">Your unique username to app</span>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="password">Password</label>
                                    <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                    <span class="help-block small">Yur strong password</span>
                                </div>
                                <div class="checkbox login-checkbox">
                                    <label>
                                        <input type="checkbox" class="i-checks"> Remember me </label>
                                    <p class="help-block small">(if this is a private computer)</p>
                                </div>
                                <button class="btn btn-success btn-block loginbtn">Login</button>
                                <a class="btn btn-default btn-block" href="#">Register</a>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="text-center login-footer">
                    <p>Copyright © 2018. All rights reserved. Template by <a href="https://colorlib.com/wp/templates/">Colorlib</a></p>
                </div>
            </div>   
        </div>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery-price-slider.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
        <script src="js/metisMenu/metisMenu.min.js"></script>
        <script src="js/metisMenu/metisMenu-active.js"></script>
        <script src="js/tab.js"></script>
        <script src="js/icheck/icheck.min.js"></script>
        <script src="js/icheck/icheck-active.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
        <script src="js/tawk-chat.js"></script>
    </body>
</html>
