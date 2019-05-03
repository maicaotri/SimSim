<%-- 
    Document   : menu_nav
    Created on : Mar 25, 2019, 7:06:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link href="<c:url value="/resource/admin/img/favicon.ico"/>"
	rel="shortcut icon" type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<link href="<c:url value="/resource/admin/css/bootstrap.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.carousel.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.theme.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.theme.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/owl.transitions.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/animate.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/normalize.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/meanmenu.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/main.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/educate-custon-icon.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/morrisjs/morris.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/metisMenu/metisMenu-vertical.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="/resource/admin/css/calendar/fullcalendar.print.min.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/style.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resource/admin/css/responsive.css"/>"
	rel="stylesheet" type="text/css">
<script
	src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"
	type="text/javascript"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="logo-pro">
					<a href="index.html"><img class="main-logo"
						src="img/logo/logo.png" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="header-advance-area">
		<div class="header-top-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="header-top-wraper">
							<div class="row">
								<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
									<div class="menu-switcher-pro">
										<button type="button" id="sidebarCollapse"
											class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
											<i class="educate-icon educate-nav"></i>
										</button>
									</div>
								</div>
								<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
									<div class="header-top-menu tabl-d-n">
										<ul class="nav navbar-nav mai-top-nav">
											<li class="nav-item"><a href="#" class="nav-link">Home</a>
											</li>
											<li class="nav-item"><a href="#" class="nav-link">Services</a>
											</li>
											<li class="nav-item dropdown res-dis-nn"><a href="#"
												data-toggle="dropdown" role="button" aria-expanded="false"
												class="nav-link dropdown-toggle">Quản lý sim <span
													class="angle-down-topmenu"><i
														class="fa fa-angle-down"></i></span></a>
												<div role="menu" class="dropdown-menu animated zoomIn">
													<a href="#" class="dropdown-item">Thêm sim</a> <a href="#"
														class="dropdown-item">Sửa sim</a> 
												</div></li>
												<li class="nav-item dropdown res-dis-nn"><a href="#"
                                                data-toggle="dropdown" role="button" aria-expanded="false"
                                                class="nav-link dropdown-toggle">Quản lý user <span
                                                    class="angle-down-topmenu"><i
                                                        class="fa fa-angle-down"></i></span></a>
                                                <div role="menu" class="dropdown-menu animated zoomIn">
                                                    <a href="#" class="dropdown-item">Thêm user</a> <a href="#"
                                                        class="dropdown-item">Sửa user</a> 
                                                </div></li>
											
										</ul>
									</div>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
									<div class="header-right-info">
										<ul class="nav navbar-nav mai-top-nav header-right-menu">
											<li class="nav-item"><a href="#" data-toggle="dropdown"
												role="button" aria-expanded="false"
												class="nav-link dropdown-toggle"> <img
													src="img/product/pro4.jpg" alt="" /> <span
													class="admin-name">Prof.Anderson</span> <i
													class="fa fa-angle-down edu-icon edu-down-arrow"></i>
											</a>
												<ul role="menu"
													class="dropdown-header-top author-log dropdown-menu animated zoomIn">
													<li><a href="#"><span
															class="edu-icon edu-home-admin author-log-ic"></span>My
															Account</a></li>
													<li><a href="#"><span
															class="edu-icon edu-user-rounded author-log-ic"></span>My
															Profile</a></li>
													<li><a href="#"><span
															class="edu-icon edu-money author-log-ic"></span>User
															Billing</a></li>
													<li><a href="#"><span
															class="edu-icon edu-settings author-log-ic"></span>Settings</a>
													</li>
													<li><a href="#"><span
															class="edu-icon edu-locked author-log-ic"></span>Log Out</a>
													</li>
												</ul></li>
											<li class="nav-item nav-setting-open"><a href="#"
												data-toggle="dropdown" role="button" aria-expanded="false"
												class="nav-link dropdown-toggle"><i
													class="educate-icon educate-menu"></i></a>

												<div role="menu"
													class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
													<ul class="nav nav-tabs custon-set-tab">
														<li class="active"><a data-toggle="tab" href="#Notes">Notes</a>
														</li>
														<li><a data-toggle="tab" href="#Projects">Projects</a>
														</li>
														<li><a data-toggle="tab" href="#Settings">Settings</a>
														</li>
													</ul>

													<div class="tab-content custom-bdr-nt">
														<div id="Notes" class="tab-pane fade in active">
															<div class="notes-area-wrap">
																<div class="note-heading-indicate">
																	<h2>
																		<i class="fa fa-comments-o"></i> Latest Notes
																	</h2>
																	<p>You have 10 new message.</p>
																</div>
																<div class="notes-list-area notes-menu-scrollbar">
																	<ul class="notes-menu-list">
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/4.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/1.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/2.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/3.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/4.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/1.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/2.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/1.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/2.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="notes-list-flow">
																					<div class="notes-img">
																						<img src="img/contact/3.jpg" alt="" />
																					</div>
																					<div class="notes-content">
																						<p>The point of using Lorem Ipsum is that it
																							has a more-or-less normal.</p>
																						<span>Yesterday 2:45 pm</span>
																					</div>
																				</div>
																		</a></li>
																	</ul>
																</div>
															</div>
														</div>
														<div id="Projects" class="tab-pane fade">
															<div class="projects-settings-wrap">
																<div class="note-heading-indicate">
																	<h2>
																		<i class="fa fa-cube"></i> Latest projects
																	</h2>
																	<p>You have 20 projects. 5 not completed.</p>
																</div>
																<div
																	class="project-st-list-area project-st-menu-scrollbar">
																	<ul class="projects-st-menu-list">
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Web Development</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">1 hours ago</span>
																					</div>
																					<div class="projects-st-content">
																						<p>Completion with: 28%</p>
																						<div class="progress progress-mini">
																							<div style="width: 28%;"
																								class="progress-bar progress-bar-danger hd-tp-1"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Software Development</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">2 hours ago</span>
																					</div>
																					<div class="projects-st-content project-rating-cl">
																						<p>Completion with: 68%</p>
																						<div class="progress progress-mini">
																							<div style="width: 68%;"
																								class="progress-bar hd-tp-2"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Graphic Design</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">3 hours ago</span>
																					</div>
																					<div class="projects-st-content">
																						<p>Completion with: 78%</p>
																						<div class="progress progress-mini">
																							<div style="width: 78%;"
																								class="progress-bar hd-tp-3"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Web Design</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">4 hours ago</span>
																					</div>
																					<div class="projects-st-content project-rating-cl2">
																						<p>Completion with: 38%</p>
																						<div class="progress progress-mini">
																							<div style="width: 38%;"
																								class="progress-bar progress-bar-danger hd-tp-4"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Business Card</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">5 hours ago</span>
																					</div>
																					<div class="projects-st-content">
																						<p>Completion with: 28%</p>
																						<div class="progress progress-mini">
																							<div style="width: 28%;"
																								class="progress-bar progress-bar-danger hd-tp-5"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Ecommerce Business</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">6 hours ago</span>
																					</div>
																					<div class="projects-st-content project-rating-cl">
																						<p>Completion with: 68%</p>
																						<div class="progress progress-mini">
																							<div style="width: 68%;"
																								class="progress-bar hd-tp-6"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Woocommerce Plugin</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">7 hours ago</span>
																					</div>
																					<div class="projects-st-content">
																						<p>Completion with: 78%</p>
																						<div class="progress progress-mini">
																							<div style="width: 78%;" class="progress-bar"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																		<li><a href="#">
																				<div class="project-list-flow">
																					<div class="projects-st-heading">
																						<h2>Wordpress Theme</h2>
																						<p>The point of using Lorem Ipsum is that it
																							has a more or less normal.</p>
																						<span class="project-st-time">9 hours ago</span>
																					</div>
																					<div class="projects-st-content project-rating-cl2">
																						<p>Completion with: 38%</p>
																						<div class="progress progress-mini">
																							<div style="width: 38%;"
																								class="progress-bar progress-bar-danger"></div>
																						</div>
																						<p>Project end: 4:00 pm - 12.06.2014</p>
																					</div>
																				</div>
																		</a></li>
																	</ul>
																</div>
															</div>
														</div>
														<div id="Settings" class="tab-pane fade">
															<div class="setting-panel-area">
																<div class="note-heading-indicate">
																	<h2>
																		<i class="fa fa-gears"></i> Settings Panel
																	</h2>
																	<p>You have 20 Settings. 5 not completed.</p>
																</div>
																<ul class="setting-panel-list">
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Show notifications</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							class="onoffswitch-checkbox" id="example">
																						<label class="onoffswitch-label" for="example">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Disable Chat</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							class="onoffswitch-checkbox" id="example3">
																						<label class="onoffswitch-label" for="example3">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Enable history</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							class="onoffswitch-checkbox" id="example4">
																						<label class="onoffswitch-label" for="example4">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Show charts</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							class="onoffswitch-checkbox" id="example7">
																						<label class="onoffswitch-label" for="example7">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Update everyday</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							checked="" class="onoffswitch-checkbox"
																							id="example2"> <label
																							class="onoffswitch-label" for="example2">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Global search</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							checked="" class="onoffswitch-checkbox"
																							id="example6"> <label
																							class="onoffswitch-label" for="example6">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																	<li>
																		<div class="checkbox-setting-pro">
																			<div class="checkbox-title-pro">
																				<h2>Offline users</h2>
																				<div class="ts-custom-check">
																					<div class="onoffswitch">
																						<input type="checkbox" name="collapsemenu"
																							checked="" class="onoffswitch-checkbox"
																							id="example5"> <label
																							class="onoffswitch-label" for="example5">
																							<span class="onoffswitch-inner"></span> <span
																							class="onoffswitch-switch"></span>
																						</label>
																					</div>
																				</div>
																			</div>
																		</div>
																	</li>
																</ul>

															</div>
														</div>
													</div>
												</div></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile Menu start -->
		<div class="mobile-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="mobile-menu">
							<nav id="dropdown">
								<ul class="mobile-menu-nav">
									<li><a data-toggle="collapse" data-target="#Charts"
										href="#">Quản lý sim <span
											class="admin-project-icon edu-icon edu-down-arrow"></span></a>
										<ul class="collapse dropdown-header-top">
											<li><a href="">Thêm sim</a></li>
											<li><a href="">Sửa sim</a></li>
										</ul></li>
									<li><a data-toggle="collapse" data-target="#demoevent"
										href="#">Quản lý User <span
											class="admin-project-icon edu-icon edu-down-arrow"></span></a>
										<ul id="demoevent" class="collapse dropdown-header-top">
											<li><a href="all-professors.html">Thêm user</a></li>
											<li><a href="add-professor.html">Sửa user</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile Menu end -->
		<div class="breadcome-area">
			<div class="container-fluid">
				<div class="row">
					<div>
						<div class="breadcome-list">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="<c:url value="/resource/admin/js/vendor/jquery-1.12.4.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/bootstrap.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/wow.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery-price-slider.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/jquery.meanmenu.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/owl.carousel.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/jquery.sticky.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/jquery.scrollUp.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/jquery.counterup.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/waypoints.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/counterup/counterup-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/metisMenu/metisMenu-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/morrisjs/raphael-min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/morrisjs/morris.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/morrisjs/morris-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/jquery.sparkline.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/jquery.charts-sparkline.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/sparkline/sparkline-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/moment.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/fullcalendar.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/calendar/fullcalendar-active.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resource/admin/js/vendor/modernizr-2.8.3.min.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/plugins.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/main.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resource/admin/js/tawk-chat.js"/>"
		type="text/javascript"></script>
</body>
</html>
