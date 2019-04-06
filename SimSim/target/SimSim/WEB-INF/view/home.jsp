<%-- 
    Document   : home
    Created on : Mar 23, 2019, 6:32:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
        #mtop a{
            float: left;
            padding: 5px 5px;
            color: white;
        }@media (max-width: 320px){
            #mtop a{
                float: left;
                color: #F8972E;
                padding: 5px 5px;
                font-size: 14px;
            }}
        #bs-example-navbar-collapse-1 li.dropdown:hover{
            animation-name: flipInX;
            -webkit-animation-name: flipInX;
            animation-duration: 0s;
            -webkit-animation-duration: 0s;
            animation-delay: 0s;
            -webkit-animation-delay: 0s;
        }#bs-example-navbar-collapse-1 li.dropdown:hover a:hover{
            animation-name: flipInX;
            -webkit-animation-name: flipInX;
            animation-duration: 0s;
            -webkit-animation-duration: 0s;
            animation-delay: 0s;
            -webkit-animation-delay: 0s;
        }
    </style>
    <body>
        <div class="container-fluid tophotline hidden-xs">
            <div class="container">
                <div class="pull-left wow fadeInRight">       
                    <i class="glyphicon glyphicon-calendar">

                    </i> Hôm nay: 23/03/2019</div>
                <div class="cart wow fadeInLeft" >
                    <a href="" class="addcart hidden-xs">
                        <i class="glyphicon glyphicon-shopping-cart font-12 hidden-xs"></i> Giỏ hàng 
                        <span class="hidden-xs badge" id="cart">0</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="container">
            <div class="row" id="row123">
                <div class="banner hidden-xs" style="vertical-align:top;">
                    <img alt="" class="img-responsive img-fluid" height="186" src="/data/favicon/banner11.png" width="1020" />
                </div>
                <div class="banner2 visible-xs" style="vertical-align:top;">
                    <img alt="" class="img-responsive img-fluid" height="186" src="/data/favicon/bannermobile111.png" width="575" />
                </div>
                <div class="clearfix"></div>
                <div class="container-fluid">
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content"></div>
                        </div>
                    </div>
                </div>
                <div id="custom-bootstrap-menu" class="navbar-default " role="navigation" style="border-radius: 0; margin-top: 0px;">
                    <div class="container-fluid">
                        <div class="navbar-header" id="menutop123">
                            <div id="mtop" class="visible-xs">
                                <a class="leftmenu pull-left glyphicon glyphicon-list" style="color: white; font-size: 20px;"></a>
                                <div id="mtop2" class="visible-xs">
                                    <a href="" id="trangchu2"> 
                                        <i class="glyphicon glyphicon-home"></i> Trang chủ
                                    </a>
                                    <a href="/p/thanh-toan" id="thanhtoan2">Thanh Toán</a>
                                    <a href="/p/lien-he" id="lienhe2">Liên hệ</a>
                                </div>
                            </div>

                            <button style="background: none; border: 0;" type="button" class="pull-right visible-xs" data-toggle="collapse" data-target=".navbar-menubuilder"><i href="#" class="glyphicon glyphicon-list" style="color: white; font-size: 20px; margin-top: 7px;">

                                </i>
                            </button>
                        </div>
                        <div>

                        </div>
                        <div class="collapse navbar-collapse navbar-menubuilder " id="menuphai123">
                            <ul class="nav navbar-nav navbar-left">
                                <li class="">
                                    <a href="/" >Trang chủ</a>
                                </li>
                                <li class="">
                                    <a href="/p/gioi-thieu" >Giới thiệu</a>
                                </li>
                                <li class="">
                                    <a href="/p/thanh-toan" >Thanh toán</a>
                                </li>
                                <li class="">
                                    <a href="/p/lien-he" >Liên hệ</a>
                                </li>
                                <li class="">
                                    <a href="/p/ban-sim-tra-gop" >Bán sim trả góp</a>
                                </li>
                                <li class="">
                                    <a href="/p/cam-co-sim" >Cầm cố sim</a>
                                </li>
                                <li class="">
                                    <a href="/p/thu-mua-sim" >Thu mua sim</a>
                                </li>
                                <li class="">
                                    <a href="/p/phong-thuy" >Xem phong thủy</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div  id="left">
                    <div class="panel panel-primary" id="leftmenu">
                        <div class="panel-heading hidden-xs">
                            <h2 class="panel-title">
                                <i class="glyphicon glyphicon-list"></i> Tìm sim theo các mạng
                            </h2>
                        </div>
                        <nav class="navbar-default" role="navigation">
                            <div class="panel panel-default visible-xs" id="search_box1" style="background:#f5f5f5">
                                <div class="text-center">
                                    <div class="stv-search-bg text-primary" style="font-size: 32px; margin-top: 2px"></div>
                                    <div style="margin-top: -28px;" class="txttim">TÌM SIM SỐ ĐẸP</div>
                                </div>
                                <div class="panel-body">
                                    <form id="search" action="index.php" class="form-horizontal" style="margin: 0; padding: 0;">
                                        <input name="do" value="search" type="hidden">
                                        <input type="hidden" name="submit" value="true" />
                                        <div class="form-group">
                                            <div class="col-md-4 col-xs-12 col-lg-4">
                                                <div class="row">
                                                    <select name="network" class="form-control" style="font-size: 14px;">
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
                                                    <div class="input-group-addon font-12"> Giá từ:</div>
                                                    <input name="giatu" class="form-control price" type="tel" placeholder="100,000" />
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-xs-6 col-lg-4 showgia">
                                                <div class="input-group">
                                                    <div class="input-group-addon font-12">Đến:</div>
                                                    <input name="den" class="form-control price" type="tel" placeholder="1,000,000" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" id="tsmb1" style="padding: 8px;">
                                            <a href="https://muasim24h.vn">
                                                <img alt="" id="anh1" height="44px" src="/data/favicon/logo.png" style="display:none; margin-left: 36px;" width="44px" >
                                            </a>
                                            <div class="input-group">
                                                <input name="sim" id="sim"  type="tel"  value="" class="form-control pull-left popover-dismiss" placeholder="Nhập số sim bạn cần tìm" data-container="body" data-toggle="popover" data-placement="bottom" data-content=" - Sử dụng dấu <span class='red'>x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> " title="Hướng dẫn tìm kiếm sim"  />
                                                <span class="input-group-btn">
                                                    <button class="btn btn-warning strong" id="timsimx">Tìm sim</button>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="form-group text-center">
                                            <strong class="state-danger font-12">Ví dụ:</strong> &nbsp;
                                            <a rel="nofollow" href="*888" class="hotkey">*888</a>, 
                                            <a rel="nofollow" href="0912*68" class="hotkey">0912*68</a>, 
                                            <a rel="nofollow" href="090*888" class="hotkey">090*888</a>, 
                                            <a rel="nofollow" href="0913*" class="hotkey">0913*</a>, 
                                            <a rel="nofollow" href="*6688" class="hotkey">*6688</a>
                                        </div>
                                        <div class="form-group text-center">Sim 10 số 
                                            <input type="radio" value="0" name="type" />&nbsp; &nbsp;Sim 11 số 
                                            <input type="radio" value="1" name="type" />
                                        </div>
                                        <div class="form-group">
                                            <a href="#" class="pull-right" id="timnangcao" style="margin-right: 50px;">
                                                <strong class="text-danger">Tìm kiếm nâng cao</strong>
                                            </a>
                                        </div>
                                        <div class="form-group text-center fullsearch" style="display: none;">Dãy số không gồm:
                                            <input name="n[]" value="1" type="checkbox">
                                            <span> 1 </span>
                                            <input name="n[]" value="2" type="checkbox">
                                            <span> 2 </span>
                                            <input name="n[]" value="3" type="checkbox">
                                            <span> 3 </span>
                                            <input name="n[]" value="4" type="checkbox">
                                            <span> 4 </span>
                                            <input name="n[]" value="5" type="checkbox">
                                            <span> 5 </span>
                                            <input name="n[]" value="6" type="checkbox">
                                            <span> 6 </span>
                                            <input name="n[]" value="7" type="checkbox">
                                            <span> 7 </span>
                                            <input name="n[]" value="8" type="checkbox">
                                            <span> 8 </span>
                                            <input name="n[]" value="9" type="checkbox">
                                            <span> 9 </span>
                                        </div>
                                        <div class="form-group text-center fullsearch" style=" display: none;">
                                            <div class="col-md-4 col-xs-6 col-md-offset-2">
                                                <div class="input-group">
                                                    <div class="input-group-addon font-12">Tổng điểm:</div>
                                                    <input name="tongdiem" maxlength="2" class="form-control mp0 " type="tel" placeholder=" < 81" />
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-xs-6">
                                                <div class="input-group">
                                                    <div class="input-group-addon font-12">Tổng Nút:</div>
                                                    <input name="tongnut" maxlength="2" class="form-control mp0 "type="tel"  placeholder=" 1 -10" />
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </nav>

                        <%@ include file="menu_left.jsp" %>
                    </div>
                </div>
                <div class="" id="main">
                    <div class="panel panel-default hidden-xs" id="search_box">
                        <div class="text-center">
                            <div class="stv-search-bg text-primary" style="font-size: 32px; margin-top: -2px"></div>
                            <div style="margin-top: -28px;" class="txttim">TÌM SIM SỐ ĐẸP</div>

                        </div>
                        <div class="panel-body">
                            <form id="search1" action="" class="form-horizontal">
                                <input name="do" value="search" type="hidden">
                                <input type="hidden" name="submit" value="true" />
                                <div class="form-group">
                                    <div class="col-md-4 col-xs-12 col-lg-4">
                                        <div class="row">
                                            <select name="network" class="form-control strong">
                                                <option value="0">Chọn mạng di động</option>
                                                <option value="1">Viettel</option>
                                                <option value="2">Mobifone</option>
                                                <option value="3">Vinaphone</option>
                                                <option value="4">Vietnamobile</option>
                                                <option value="5">Gmobile</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-xs-6 col-lg-4 showgia " style="margin-right: -15px;">
                                        <div class="input-group">
                                            <div class="input-group-addon font-12"> Giá từ:</div>
                                            <input name="giatu" class="form-control price" placeholder="100,000" />
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-xs-6 col-lg-4 showgia">
                                        <div class="input-group">
                                            <div class="input-group-addon font-12">Đến:</div>
                                            <input name="den" class="form-control price" placeholder="10,000,000" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <input name="sim" id="sim2"  type="tel" value="" class="form-control pull-left popover-dismiss" placeholder="Nhập số sim bạn cần tìm" data-container="body" data-toggle="popover" data-placement="bottom" data-content=" - Sử dụng dấu <span class='red'>x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> " title="Hướng dẫn tìm kiếm sim"  />
                                        <span class="input-group-btn">
                                            <button name="submit" class="btn btn-warning strong">Tìm sim</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group text-center"> 
                                    <strong class="red font-12">Hot key:</strong> 
                                    <span class="hotkey">
                                        <a rel="nofollow" href="0912*68" class="hotkey">0912*68</a>, 
                                        <a rel="nofollow" href="090*888" class="hotkey">090*888</a>, 
                                        <a rel="nofollow" href="0913*" class="hotkey">0913*</a>, 
                                        <a rel="nofollow" href="*6688" class="hotkey">*6688</a>, 
                                        <a rel="nofollow" href="09*(39|79|38|78)" class="hotkey">09*(39|79|38|78)</a>, 
                                        <a rel="nofollow" href="#" class="hotkey">09(1|0)*888</a> 
                                    </span>
                                </div><div class="form-group text-center fullsearch" >Dãy số không gồm:
                                    <input name="n[]" value="1" type="checkbox">
                                    <span> 1 </span>
                                    <input name="n[]" value="2" type="checkbox">
                                    <span> 2 </span>
                                    <input name="n[]" value="3" type="checkbox">
                                    <span> 3 </span>
                                    <input name="n[]" value="4" type="checkbox">
                                    <span> 4 </span>
                                    <input name="n[]" value="5" type="checkbox">
                                    <span> 5 </span>
                                    <input name="n[]" value="6" type="checkbox">
                                    <span> 6 </span>
                                    <input name="n[]" value="7" type="checkbox">
                                    <span> 7 </span>
                                    <input name="n[]" value="8" type="checkbox">
                                    <span> 8 </span>
                                    <input name="n[]" value="9" type="checkbox">
                                    <span> 9 </span>
                                </div>
                                <div class="form-group text-center fullsearch" >
                                    <div class="col-md-5 col-xs-6 col-md-offset-1">
                                        <div class="input-group">
                                            <div class="input-group-addon font-12">Tổng điểm:</div>
                                            <input name="tongdiem" maxlength="2" class="form-control mp0 " placeholder=" < 81" />
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-xs-6">
                                        <div class="input-group">
                                            <div class="input-group-addon font-12">Tổng Nút:</div>
                                            <input name="tongnut" maxlength="2" class="form-control mp0 " placeholder=" 1 -10" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group text-center">Sim 10 số 
                                    <input type="radio" value="0" name="type" />&nbsp; &nbsp;Sim 11 số 
                                    <input type="radio" value="1" name="type" />
                                </div>
                            </form>
                        </div>
                    </div>

                    <%@ include file="menu_network.jsp" %>

                    <div class="clearfix"></div>
                    <style>div#menutop123.navbar-header.navbar-fixed-top{display: none !important;}nav#c-menu--slide-left.navbar-fixed-top{display: none !important;}#nav.c-menu--slide-leftc-menu.navbar.navbar-default.c-menu--slide-left.is-active.navbar-fixed-top button.c-menu__close.panel-heading{display: none !important;}div#menuphai123.navbar-collapse.navbar-menubuilder.navbar-fixed-top.collapse.in {display: none !important;}</style><div class="panel panel-default"><div class="panel-heading"><h1 class="panel-title">SIM SỐ ĐẸP NỔI BẬT <a target="_blank" href="index.php?ajax=home&page=1&print=true" class="pull-right glyphicon glyphicon-print"></a></h1></div><table class="table table-bordered table-condensed"><thead><tr><th class="active center">STT</th><th class="active"><input name="simtype" type="radio" value="09" />10 Số <input name="simtype" type="radio" value="01" />11 Số</th><th class="active sortprice">Giá tiền <span class="glyphicon"> <a class="pricetoogle" href="javascript://"><span class="glyphicon-arrow-up"></span><span class="glyphicon glyphicon-arrow-down"></span></a></span></th><th class="active text-center">Tổng</th><th class="active">Mạng di dộng</th><th class="hidden">Phong Thủy +/-</th><th class="active text-center">Đặt mua</th><th class="active text-center text-center">Giỏ hàng</th></tr></thead><tbody><td><td colspan="8"><div id="loc1" style="float: right;"><form method="POST" class="form-inline" id="loc"><strong>Lọc danh sách:</strong><select name="loctheogia" Class="locgia from-control"><option value="" selected="selected">Mọi mức giá</option><option value="giaban &lt; 1">Dưới 1 Triệu</option><option value="giaban &gt;=1 AND giaban &lt;= 2">Từ 1 -2 Triệu</option><option value="giaban &gt;=2 AND giaban &lt;=3">Từ 2 - 3 Triệu</option><option value="giaban &gt;=3 AND giaban &lt;=5">Từ 3 - 5 Triệu</option><option value="giaban &gt;= 5 AND giaban &lt;=8">Từ 5 - 8 Triệu</option><option value="giaban &gt;=8 AND giaban &lt;=10">Từ 8 - 10 Triệu</option><option value="giaban &gt;=10 AND giaban &lt;=15">Từ 10 -15 Triệu</option><option value="giaban &gt;=15 AND giaban &lt;=20">Từ 15 - 20 Triệu</option><option value="giaban &gt; 20">Trên 20 Triệu</option></select><select name="loctheomang" class="locmang from-control"><option value="0" class="locmang from-control option">Mọi mạng</option><option value="1" class="locmang from-control option">Viettel</option><option value="2" class="locmang from-control option">Mobifone</option><option value="3" class="locmang from-control option">Vinaphone</option><option value="4" class="locmang from-control option">Vietnamobile</option><option value="5" class="locmang from-control option">Gmobile</option></select></form><script>window.onload = function () {
                            $(".locgia, .locmang").change(function () {
                                $("#loc").submit();
                            });
                            if ($(document).width() < 1024) {
                                $("a.hotkey").click(function () {
                                    var text = $(this).text();
                                    $("#minisearch").val(text);
                                });
                                $("#fr2").hover(function () {
                                    $("#fullsearch").show('slow');
                                    $("#vd1").hide();
                                }, function () {
                                    $("#fullsearch").hide('slow');
                                    $("#vd1").show();
                                })
                            }
                        };
                                    </script>
                                </div>
                            </td>
                            </td>
                            <tr>
                                <td class="center">1</td>
                                <td>
                                    <a href="https://muasim24h.vn/0868571989.html" title="0868.57.1989" rel="nofollow">
                                        <strong class="font-16 sim">0868.57.1989</strong>
                                    </a>
                                </td>
                                <td class="font-13" style="color: black;">4,500,000</td>
                                <td  class="text-center">
                                    <span class="badge">61</span>
                                </td>
                                <td  class="text-center">
                                    <span class="network n1"></span>
                                </td>
                                <td  class="hidden">
                                    <label class="label" style="display: inline-block; width: 35px;background: ;"></label>
                                    <label style="display: inline-block; width: 55px; text-align: center;"> 
                                        <strong></strong>
                                    </label>/ 
                                </td>
                                <td class="text-center">
                                    <a rel="nofollow" href="https://muasim24h.vn/0868571989.html" class="btn btn-xs btn-warning ">Đặt mua</a></td>
                                <td class="text-center">
                                    <a rel="nofollow" data-toggle="tooltip" title="Thêm 0868.57.1989 vào giỏ hàng" href="" class="addcart" data-sim="0868571989" data-gia="4.5"><i class="glyphicon glyphicon-shopping-cart"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">2</td>
                                <td>
                                    <a href="https://muasim24h.vn/0974521996.html" title="0974.52.1996" rel="nofollow">
                                        <strong class="font-16 sim">0974.52.1996</strong>
                                    </a>
                                </td>
                                <td class="font-13" style="color: black;">4,500,000</td>
                                <td  class="text-center">
                                    <span class="badge">52</span>
                                </td>
                                <td  class="text-center">
                                    <span class="network n1"></span>
                                </td>
                                <td  class="hidden">
                                    <label class="label" style="display: inline-block; width: 35px;background: ;"></label>
                                    <label style="display: inline-block; width: 55px; text-align: center;"> 
                                        <strong></strong>
                                    </label>/ 
                                </td>
                                <td class="text-center">
                                    <a rel="nofollow" href="https://muasim24h.vn/0974521996.html" class="btn btn-xs btn-warning ">Đặt mua</a>
                                </td>
                                <td class="text-center">
                                    <a rel="nofollow" data-toggle="tooltip" title="Thêm 0974.52.1996 vào giỏ hàng" href="" class="addcart" data-sim="0974521996" data-gia="4.5"><i class="glyphicon glyphicon-shopping-cart"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">100</td>
                                <td>
                                    <a href="https://muasim24h.vn/0912789376.html" title="0912.789.376" rel="nofollow">
                                        <strong class="font-16 sim">0912.789.376</strong>
                                    </a>
                                </td>
                                <td class="font-13" style="color: black;">650,000</td>
                                <td  class="text-center">
                                    <span class="badge">52</span>
                                </td>
                                <td  class="text-center">
                                    <span class="network n3"></span>
                                </td>
                                <td  class="hidden">
                                    <label class="label" style="display: inline-block; width: 35px;background: ;"></label>
                                    <label style="display: inline-block; width: 55px; text-align: center;"> 
                                        <strong></strong>
                                    </label>/ 
                                </td>
                                <td class="text-center">
                                    <a rel="nofollow" href="https://muasim24h.vn/0912789376.html" class="btn btn-xs btn-warning ">Đặt mua</a>
                                </td>
                                <td class="text-center">
                                    <a rel="nofollow" data-toggle="tooltip" title="Thêm 0912.789.376 vào giỏ hàng" href="" class="addcart" data-sim="0912789376" data-gia="0.65">
                                        <i class="glyphicon glyphicon-shopping-cart"></i>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="8" class="text-right">
                                        <ul class="pagination pagination-sm">
                                            <li>
                                                <span class="inactive" href="#">Trước</span>
                                            </li> 
                                            <li class="active">
                                                <a title="Go to page 1 of 140" class="current" href="javascript:void(0)">[1]</a> 
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 2 of 140" href="/?page=2">2</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 3 of 140" href="/?page=3">3</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 4 of 140" href="/?page=4">4</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 5 of 140" href="/?page=5">5</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 6 of 140" href="/?page=6">6</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 7 of 140" href="/?page=7">7</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 8 of 140" href="/?page=8">8</a>
                                            </li>
                                            <li>
                                                <a class="paginate" title="Go to page 9 of 140" href="/?page=9">9</a>
                                            </li>... <li>
                                                <a class="paginate" title="Go to page 140 of 140" href="/?page=140">140</a>
                                            </li>
                                            <li>
                                                <a class="paginate" href="/?page=2">Tiếp theo</a>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div id="right">
                    <div class="panel panel-warning ">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <i class="glyphicon glyphicon-star-empty"></i>Hotline
                            </h2>
                        </div>
                        <p style="text-align: center;">
                            <img alt="" class="hidden-xs img-responsive img-fluid" height="230" src="/data/bg_hotline.png" style="margin:auto;" width="194" />
                        </p>
                        <p style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal; text-align: center;"><strong style="list-style-type: none; padding: 0px; margin: 0px;"><span style="list-style-type: none; padding: 0px; margin: 0px;"><span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;"><span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;"><span style="color:#FF0000;"></span></span></span></span></strong><strong style="list-style-type: none; padding: 0px; margin: 0px;"><span style="list-style-type: none; padding: 0px; margin: 0px;">
                                    <span style="font-size:22px;"><span style="list-style-type: none; padding: 0px; margin: 0px;">
                                            <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                <span style="color:#FF0000;">Hỗ Trợ & Tư Vấn</span>

                                            </span>

                                        </span>

                                    </span>
                                    <br />
                                    <span style="color:#006400;">
                                        <span style="font-size:20px;">
                                            <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">Ms. Trang</span>

                                            </span>

                                        </span>

                                    </span>
                                    <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                        <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                            <br />
                                            <span style="color:#800080;">0961.003.003</span>

                                        </span></span>
                                    <br />
                                    <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                        <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                            <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                                <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                    <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                                        <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                            <span style="color:#800080;">
                                                                <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                                                    <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                                        <span style="color:#006400;">
                                                                            <span style="font-size:20px;">
                                                                                <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                                                    <span style="list-style-type: none; padding: 0px; margin: 0px;">Ms. Như</span>

                                                                                </span>

                                                                            </span>

                                                                        </span>

                                                                    </span>
                                                                </strong>

                                                            </span>

                                                        </span>

                                                    </span>

                                                </span>
                                            </strong>

                                        </span>
                                    </strong>

                                </span>
                            </strong>
                        </p>
                        <p style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-size: 12px; line-height: normal; text-align: center;">
                            <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                    <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                        <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                            <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                                <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                    <span style="color:#800080;">
                                                        <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                                            <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                                <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                                                    <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                                        <span style="color:#800080;">0344.24.24.24</span>

                                                                    </span>

                                                                </span>

                                                            </span>
                                                        </strong>

                                                    </span>

                                                </span>

                                            </span>

                                        </span>
                                    </strong>
                                    <br />
                                    <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                        <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                            <span style="color:#800080;">
                                                <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                                    <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                        <span style="font-size:20px;">
                                                            <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                                <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                                    <span style="color:#006400;">Mr. Anh</span>

                                                                </span>

                                                            </span>

                                                        </span>

                                                    </span>
                                                </strong>
                                                <br />0996.003.003<br />
                                                0995.003.003</span>
                                        </span>
                                    </span>
                                    <br />
                                    <span style="font-size:22px;">
                                        <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                            <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                <strong style="list-style-type: none; padding: 0px; margin: 0px;">
                                                    <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                        <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                                            <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                                <span style="color:#FF0000;">Khiếu Nại & Góp Ý</span>

                                                            </span>

                                                        </span>

                                                    </span>
                                                </strong>

                                            </span>

                                        </span>

                                    </span>
                                    <br />
                                    <span style="font-size:20px;">
                                        <span style="list-style-type: none; padding: 0px; margin: 0px;">
                                            <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                                <span style="color:#006400;">Mr. Thắng</span>

                                            </span>

                                        </span>

                                    </span>
                                    <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 26px;">
                                        <span style="list-style-type: none; font-family: arial, helvetica, sans-serif; padding: 0px; margin: 0px;">
                                            <br />
                                            <a href="tel:098.459.8888">
                                                <span style="color:#800080;">0984.59.8888</span>
                                            </a><br />
                                            <strong new="" roman="" style="font-size: 14px; font-family: " times="">
                                                <br />
                                                Thời Gian Làm Việc
                                            </strong>
                                        </span>
                                    </span>
                                </span>
                            </strong>
                        </p>
                        <p style="text-align: center;">
                            <span style="font-family:times new roman,times,serif;">
                                <span style="font-size:14px;">
                                    <span style="color:#33cc00;">
                                        <strong>( 8h00-20h00 )</strong>
                                    </span>
                                </span>
                            </span>
                        </p>
                        <p style="text-align: center;">
                            <span style="font-family:times new roman,times,serif;">
                                <span style="font-size:14px;">
                                    <strong>
                                        <span style="color:#008080;">Từ thứ 2 đến CN
                                            <br />
                                            Ngoài thời gian trên quý khách nhấn 
                                            <strong>Đặt mua</strong> 
                                            hoặc click</span>
                                        <strong>
                                            <span style="color:#008080;"></span>
                                            <br />
                                            <strong>
                                                <span style="color:#33cc00;">
                                                    <a class="btn btn-info ajax" href="/index.php?ajax=recall">
                                                        <i class="fa fa-icon-left glyphicon glyphicon-chevron-right"></i>
                                                        <span class="text">Yêu cầu gọi lại</span>
                                                    </a>

                                                </span>
                                            </strong>
                                        </strong>
                                        <span style="color:#008080;">
                                            <br />
                                            Điền thông tin chúng tôi sẽ gọi lại
                                            <br />
                                            tư vấn quý khách!
                                        </span>
                                    </strong>
                                </span>
                            </span>
                        </p>
                    </div>
                    <div class="panel panel-warning visible-xs">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <i class="glyphicon glyphicon-list"></i> Tìm sim theo giá tiền</h2>
                        </div>
                        <div class="list-group">
                            <a class="list-group-item" href="/sim-gia-tu-100-trieu-tro-len.htm">Từ 100 Triệu trở lên</a>
                            <a class="list-group-item" href="/sim-gia-tu-50-trieu-den-100-trieu.htm">Từ 50Triệu đến 100 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-20-trieu-den-50-trieu.htm">Từ 20Triệu đến 50 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-10-trieu-den-20-trieu.htm">Từ 10Triệu đến 20 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-5-trieu-den-10-trieu.htm">Từ 5Triệu đến 10 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-2-trieu-den-5-trieu.htm">Từ 2Triệu đến 5 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-1-trieu-den-2-trieu.htme">Từ 1Triệu đến 2 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-tu-500-000d-den-1-trieu.htm">Từ 500,000Đ đến 1 Triệu</a>
                            <a class="list-group-item" href="/sim-gia-duoi-500000d.htm">Từ 500,000Đ trở xuống</a>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <i class="glyphicon glyphicon-star-empty"></i>
                            </h2>
                        </div>
                        <div class="panel-body mp0">
                            <div class="table-responsive" style="max-height: 500px; overflow: auto;">

                            </div>

                        </div>

                    </div>
                    <div class="panel panel-primary hidden-xs">
                        <div class="panel-heading">
                            <h3 class="panel-title"> 
                                <i class="glyphicon glyphicon-shopping-cart"></i> Đơn đặt hàng
                            </h3>
                        </div>
                        <div class="panel-body" style="margin: 0; padding: 0;">
                            <div id="order" class="wow slideInUp"></div>

                        </div>

                    </div>
                    <div class="panel panel-primary hidden-xs">
                        <div class="panel-heading">
                            <h3 class="panel-title"> 
                                <i class="glyphicon glyphicon-th-list"></i> Tin khuyến mãi
                            </h3>
                        </div>
                        <div class="panel-body" id="km">
                            <div>
                                <div class="newleft">
                                    <h6>
                                        <strong class="red font-b font-15"> 
                                            <i class="glyphicon glyphicon-star-empty"></i>  Tin Tức Viễn Thông
                                        </strong>
                                        <h6>
                                            <ul>
                                                <li>
                                                    <a href="/p/huong-dan-dang-ky-4g-viettel">Hướng dẫn đăng ký 4G Viettel</a>
                                                </li>
                                                <li>
                                                    <a href="/p/cach-mua-sim-so-dep-tren-mang">Cách Mua Sim Số Đẹp Trên Mạng</a>
                                                </li>
                                                <li>
                                                    <a href="/p/sim-so-dep-toi-ky-nhung-con-so-nao">Sim Số Đẹp Tối Kỵ Những Con Số Nào?</a>
                                                </li>
                                                <li>
                                                    <a href="/p/cach-dinh-gia-sim-so-dep-khong-so-bi-loe">Cách Định Giá Sim Số Đẹp Không Sợ Bị Lòe</a>
                                                </li>
                                                <li>
                                                    <a href="/p/cach-chon-sim-so-dep-gia-re-cua-nguoi-viet">Cách chọn sim số đẹp giá rẻ của người Việt</a>
                                                </li>
                                            </ul>
                                            </div>
                                            <div class="newleft">
                                                <h6>
                                                    <strong class="red font-b font-15"> 
                                                        <i class="glyphicon glyphicon-star-empty"></i>  Bạn Cần Biết
                                                    </strong>
                                                    <h6>
                                                        <ul>
                                                            <li>
                                                                <a href="/p/y-nghia-cua-sim-tu-quy-0">Ý Nghĩa Của Sim Tứ Quý 0</a>
                                                            </li>
                                                            <li>
                                                                <a href="/p/y-nghia-so-dien-thoai">Ý Nghĩa Số Điện Thoại</a>
                                                            </li>
                                                            <li>
                                                                <a href="/p/so-tong-dai-cac-mang-di-dong">Số Tổng Đài Các Mạng Di Động</a>
                                                            </li>
                                                            <li>
                                                                <a href="/p/y-nghia-cac-con-so-tu-1-den-9">Ý Nghĩa Các Con Số Từ 1 Đến 9</a>
                                                            </li>
                                                            <li>
                                                                <a href="/p/lich-chuyen-doi-thue-bao-11-so-sang-10-so">Lịch chuyển đổi thuê bao 11 số sang 10 số</a>
                                                            </li>
                                                        </ul>
                                                        </div>
                                                        <div class="newleft">
                                                            <h6>
                                                                <strong class="red font-b font-15"> 
                                                                    <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin Tuyển Dụng
                                                                </strong>
                                                                <h6>
                                                                    <ul>
                                                                        <li>
                                                                            <a href="/p/khuyen-mai-cho-khach-hang-tra-sau">Khuyến mại cho khách hàng trả sau</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="/p/chao-nam-moi-2015-cung-trieu-phu-funring-me">CHÀO NĂM MỚI 2015 CÙNG TRIỆU PHÚ FUNRING ME</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="/p/y-nghia-cua-sim-so-dep-trong-kinh-doanh-lam-an">Ý Nghĩa Của Sim Số Đẹp Trong Kinh Doanh Làm Ăn</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="/p/tuyen-nhan-vien-giao-dich-mang-vien-thong">Tuyển nhân viên giao dịch mạng viễn thông</a>
                                                                        </li>
                                                                    </ul>
                                                                    </div>
                                                                    <div class="newleft">
                                                                        <h6>
                                                                            <strong class="red font-b font-15"> 
                                                                                <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin Viettel
                                                                            </strong>
                                                                            <h6>
                                                                                <ul>
                                                                                    <li>
                                                                                        <a href="/p/huong-dan-dang-ky-goi-cuoc-v90-viettel">Hướng dẫn đăng ký gói cước V90 Viettel</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="/p/huong-dan-cach-dang-ky-4g-viettel">Hướng dẫn cách đăng ký 4G Viettel</a>
                                                                                    </li>
                                                                                </ul>
                                                                                </div>
                                                                                <div class="newleft">
                                                                                    <h6>
                                                                                        <strong class="red font-b font-15"> 
                                                                                            <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin VinaPhone
                                                                                        </strong>
                                                                                        <h6>
                                                                                            <ul>
                                                                                                <li>
                                                                                                    <a href="/p/dang-ky-goi-c50-vinaphone-mien-phi-50-phut-50-sms">Đăng ký gói C50 Vinaphone (miễn phí 50 phút, 50 SMS)</a>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <a href="/p/huong-dan-cach-dang-ky-4g-vinaphone">Hướng dẫn cách đăng ký 4G Vinaphone</a>
                                                                                                </li>
                                                                                            </ul>
                                                                                            </div>
                                                                                            <div class="newleft">
                                                                                                <h6>
                                                                                                    <strong class="red font-b font-15"> 
                                                                                                        <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin MobiFone
                                                                                                    </strong>
                                                                                                    <h6>
                                                                                                        <ul></ul>
                                                                                                        </div>
                                                                                                        <div class="newleft">
                                                                                                            <h6>
                                                                                                                <strong class="red font-b font-15"> 
                                                                                                                    <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin Vietnamobile
                                                                                                                </strong>
                                                                                                                <h6>
                                                                                                                    <ul>
                                                                                                                        <li>
                                                                                                                            <a href="/p/vietnamobile-chuyen-doi-thue-bao-11-so-sang-10-so">Vietnamobile chuyển đổi thuê bao 11 số sang 10 số</a>
                                                                                                                        </li>
                                                                                                                        <li>
                                                                                                                            <a href="/p/thanh-sim-cua-vietnamobile">Thánh SIM của Vietnamobile</a>
                                                                                                                        </li>
                                                                                                                    </ul>
                                                                                                                    </div>
                                                                                                                    <div class="newleft"><h6>
                                                                                                                            <strong class="red font-b font-15"> 
                                                                                                                                <i class="glyphicon glyphicon-star-empty"></i>  Thông Tin Gmobile
                                                                                                                            </strong>
                                                                                                                            <h6>
                                                                                                                                <ul>
                                                                                                                                    <li>
                                                                                                                                        <a href="/p/sim-gmobile-tai-khoan-cao-goi-ngoai-mang">Sim Gmobile tài khoản cao gọi ngoại mạng</a>
                                                                                                                                    </li>
                                                                                                                                    <li>
                                                                                                                                        <a href="/p/dich-vu-nap-tien-gmobile-beeline">Dịch Vụ Nạp Tiền Gmobile (Beeline)</a>
                                                                                                                                    </li>
                                                                                                                                </ul>
                                                                                                                                </div>
                                                                                                                                </div>
                                                                                                                            </div></div><div class="panel panel-primary hidden-xs" id="box1"><div class="panel-heading">
                                                                                                                                <h6 class="panel-title">
                                                                                                                                    <i class="glyphicon glyphicon-star"></i> THỐNG KÊ TRUY CẬP 
                                                                                                                                </h6>
                                                                                                                            </div>
                                                                                                                            <div class="panel-body">
                                                                                                                                <div id="bodem">
                                                                                                                                    <span style="text-align: center;">Load...</span>
                                                                                                                                </div>
                                                                                                                                <script
                                                                                                                                    >window.onload = function () {
                                                                                                                                            $("#bodem").load('/index.php/online');
                                                                                                                                        }
                                                                                                                                </script>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="panel panel-primary hidden-xs" id="box2">
                                                                                                                            <div class="panel-heading">
                                                                                                                                <h6 class="panel-title">
                                                                                                                                    <i class="glyphicon glyphicon-star"></i> Kết nối trên Facebook
                                                                                                                                </h6>
                                                                                                                            </div>
                                                                                                                            <div class="panel-body">
                                                                                                                                <iframe allowtransparency="true" frameborder="0" height="200" scrolling="no" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fmuasim24h.vn&amp;tabs=timeline&amp;width=218&amp;height=200&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=1781861188729270" style="border:none;overflow:hidden" width="218">

                                                                                                                                </iframe>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        </div>
                                                                                                                        <div class="chantrang">
                                                                                                                            <div class="container">
                                                                                                                                <div class="row" id="rowchantrang" >
                                                                                                                                    <div class="row new-footer bg-default">
                                                                                                                                        <div class="col-md-3 col-sm-3 font-13 col1 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".1s ">
                                                                                                                                            <h4 class="font-14">
                                                                                                                                                <strong>Chính Sách Bán Hàng</strong>
                                                                                                                                            </h4>
                                                                                                                                            <hr>
                                                                                                                                            <ul>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Chính sách bảo mật</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Chính sách xử lí khiếu nại</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Chính Sách Vận Chuyển</a>
                                                                                                                                                </li>
                                                                                                                                            </ul>
                                                                                                                                        </div>
                                                                                                                                        <div class="col-md-3 col-sm-3 font-13 col2 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".2s ">
                                                                                                                                            <h4 class="font-14">
                                                                                                                                                <strong>Hỗ Trợ Chung</strong>
                                                                                                                                            </h4>
                                                                                                                                            <hr>
                                                                                                                                            <ul>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Thông tin và tư vấn</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Hướng dẫn mua hàng</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Hình thức thanh toán</a>
                                                                                                                                                </li>
                                                                                                                                            </ul>
                                                                                                                                        </div>
                                                                                                                                        <div class="col-md-3 col-sm-3 font-13 col3 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".3s ">
                                                                                                                                            <h4 class="font-14">
                                                                                                                                                <strong>Thông Tin</strong>
                                                                                                                                            </h4>
                                                                                                                                            <hr>
                                                                                                                                            <ul>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Giới thiệu</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Địa chỉ văn phòng</a>
                                                                                                                                                </li>
                                                                                                                                                <li>
                                                                                                                                                    <a href="">Ý nghĩa các con số trong sim điện thoại</a>
                                                                                                                                                </li>
                                                                                                                                            </ul>
                                                                                                                                        </div>
                                                                                                                                        <div class="col-md-3 col4 font-14 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s" >
                                                                                                                                            <h4>
                                                                                                                                                <strong>CHIA SẺ MẠNG XÃ HỘI</strong>
                                                                                                                                            </h4>
                                                                                                                                            <a href="http://online.gov.vn/CustomWebsiteDisplay.aspx?DocId=39351">
                                                                                                                                                <img alt="" class="img-responsive img-fluid" height="95" src="/data/dtb.png" width="250" />
                                                                                                                                            </a>
                                                                                                                                            <ul class="share"><li>	
                                                                                                                                                    <a href="#" class="facebook wow fadeInRight wowhover" data-effect="flip" data-wow-duration="1s" data-wow-delay=".2s " title="Chi lên trong Facebook"></a>
                                                                                                                                                </li>
                                                                                                                                                <li>	
                                                                                                                                                    <a href="http://twitter.com/share?text=Mua sim số đẹp đầu số mới đang rẩ rẻ? Kho sim rẻ nay xả lại rẻ thêm nữa. Hàng triệu sim số đẹp thỏa sức lựa chọn&url=http%3A%2F%2Fmuasim24h.vn%2F" target="_blank" class="twitter wow fadeInRight" data-wow-duration="1s" data-wow-delay=".4s " title="Chi sẻ lên Twitter"></a></li><li>	
                                                                                                                                                    <a href="https://plus.google.com/share?url=http%3A%2F%2Fmuasim24h.vn%2F" target="_blank" class="plusone wow fadeInRight" data-wow-duration="1s" data-wow-delay=".6s " title="Chia sẻ lên Google+"></a></li></ul></div><div class="clearfix"></div><div class="chantrang"><div class="row" style="margin-top: 15px;"><div class="col-md-4"></div><div class="col-md-4"></div><div class="col-md-4"></div></div></div><div></div></div></div></div></div><div class="clearfix"></div><div class="copy"><div class="container"><div style="text-align: center;"><p style="margin-left: 40px; text-align: center;"><span style="font-size:18px;">Bản quyền: <span style="font-weight: 700;"><span style="font-family: Arial, Helvetica, sans-serif; line-height: normal;">Công ty TNHH NAM NHẬT THÀNH</span></span></span><br /><br /><span style="font-size:14px;"><span style="font-weight: 700;"><span style="font-weight: 700;"><span style="font-family: Arial, Helvetica, sans-serif; line-height: normal;"><strong>Địa chỉ 1: Số 127B-A5/6 Đinh Tiên Hoàng, P3, Q Bình Thạnh, TPHCM<br />Địa chỉ 2: Số 112 Cầu Trì, P. Sơn Lộc, TX. Sơn Tây, Tp. Hà Nội.</strong></span></span></span></span><br /><strong>Giấy phép Kinh doanh 0314581884 cấp ngày 18/08/2017 do Sở Kế Hoạch và Đầu Tư TP HCM cấp</strong><span style="font-size:14px;"><span style="font-weight: 700;"><span style="font-weight: 700;"><span style="font-family: Arial, Helvetica, sans-serif; line-height: normal;"><strong><span style="font-weight: 700;"><span style="font-family: Arial, Helvetica, sans-serif; line-height: normal;"></span></span></strong></span></span></span></span><span style="font-size:14px;"><span style="font-weight: 700;"><span style="font-weight: 700;"><span style="font-family: Arial, Helvetica, sans-serif; line-height: normal;"><strong></strong></span></span></span></span>
                                                                                                                                        <span style="font-size:18px;">
                                                                                                                                            <span style="font-weight: 700;">
                                                                                                                                                <br />www.muasim24h.com - www.muasim24h.vn
                                                                                                                                            </span>
                                                                                                                                        </span><span style="font-size:18px;">
                                                                                                                                            <span style="font-weight: 700; list-style-type: none; padding: 0px; margin: 0px;">
                                                                                                                                                <br />
                                                                                                                                                <span style="color:#FF0000;">Hotline: 0961.003.003 - 0996.003.003</span>

                                                                                                                                            </span>

                                                                                                                                        </span>
                                                                                                                                        <span style="font-size:18px;">
                                                                                                                                            <span style="color:#4B0082;">
                                                                                                                                                <span style="font-weight: 700; list-style-type: none; padding: 0px; margin: 0px;"></span>
                                                                                                                                                <br />
                                                                                                                                                <span style="font-weight: 700; list-style-type: none; padding: 0px; margin: 0px;">Email: </span>

                                                                                                                                            </span>
                                                                                                                                            <a href="" style="color: rgb(0, 80, 148); list-style-type: none; padding: 0px; margin: 0px;"><span style="color:#4B0082;"><span style="font-weight: 700; list-style-type: none; padding: 0px; margin: 0px;">
                                                                                                                                                        <span class="__cf_email__" data-cfemail="1a776f7b697377282e72346c745a7d777b737634797577">[email&#160;protected]</span>

                                                                                                                                                    </span>

                                                                                                                                                </span>
                                                                                                                                            </a>

                                                                                                                                        </span>
                                                                                                                                    </p>
                                                                                                                                    <strong></strong>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <a class="glyphicon scrollToTop wowhover" data-effect="fadeInRight" href="javascript://" rel="nofollow"></a>
                                                                                                                        <a class="glyphicon scrollTobottom hidden-xs" href="javascript://" rel="nofollow"></a>
                                                                                                                        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                                                                                                                        <script type="text/javascript"  src="https://muasim24h.vn/template/js/java.js"></script>
                                                                                                                        <span class="designby banquyen1">Version 2.0 mobile support - Thiết kế bởi: www.stv.vn</span>
                                                                                                                        <div id="c-mask" class="c-mask"></div>
                                                                                                                        <div class="navbar-fixed-bottom visible-xs navbar-default" style="min-height: 45px;  padding-left: 10px; padding-right: 10px;">
                                                                                                                            <div class="pull-left">
                                                                                                                                <div style="text-align: center;">
                                                                                                                                    <span style="font-size:18px;">
                                                                                                                                        <strong>
                                                                                                                                            <span style="color:#FFFFFF;">
                                                                                                                                                <span class="glyphicon glyphicon-earphone" style="color:rgb(0, 0, 0);"></span>
                                                                                                                                                <a href="tel:0961003003"> </a>
                                                                                                                                            </span>
                                                                                                                                            <a href="tel:0961003003">
                                                                                                                                                <span style="color:#FF0000;">0</span>
                                                                                                                                            </a>
                                                                                                                                            <span style="color:#FF0000;">961.003.003</span>
                                                                                                                                            <span style="color:#FF0000;"> -</span>
                                                                                                                                            <a href="tel:0996003003">
                                                                                                                                                <span style="color:#FF0000;"> </span>
                                                                                                                                            </a>
                                                                                                                                            <a href="tel:0996003003">
                                                                                                                                                <span style="color:#FF0000;">0</span>
                                                                                                                                            </a>
                                                                                                                                            <span style="color:#FF0000;">996.003.003</span>
                                                                                                                                        </strong>

                                                                                                                                    </span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                            <div class="pull-right">
                                                                                                                                <a href="/?desktop=1" class="pull-right">
                                                                                                                                    <i class="stv-display"></i>
                                                                                                                                    <b> Xem bản Desktop</b>
                                                                                                                                </a>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <script>
                                                                                                                                        (function (i, s, o, g, r, a, m) {
                                                                                                                                            i['GoogleAnalyticsObject'] = r;
                                                                                                                                            i[r] = i[r] || function () {
                                                                                                                                                (i[r].q = i[r].q || []).push(arguments)
                                                                                                                                            }, i[r].l = 1 * new Date();
                                                                                                                                            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
                                                                                                                                            a.async = 1;
                                                                                                                                            a.src = g;
                                                                                                                                            m.parentNode.insertBefore(a, m)
                                                                                                                                        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
                                                                                                                                        ga('create', 'UA-98476452-1', 'auto');
                                                                                                                                        ga('send', 'pageview');</script><div id="fb-root"></div><script>(function ($) {
                                                                                                                                                $(document).ready(function () {
                                                                                                                                                    $('.fb-page-box').hide();
                                                                                                                                                    $('.fb-page-header').click(function () {
                                                                                                                                                        $('.fb-page-box').slideToggle();
                                                                                                                                                    });
                                                                                                                                                });
                                                                                                                                            })(jQuery);
                                                                                                                                            (function (d, s, id) {
                                                                                                                                                var js, fjs = d.getElementsByTagName(s)[0];
                                                                                                                                                if (d.getElementById(id))
                                                                                                                                                    return;
                                                                                                                                                js = d.createElement(s);
                                                                                                                                                js.id = id;
                                                                                                                                                js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";
                                                                                                                                                fjs.parentNode.insertBefore(js, fjs);
                                                                                                                                            }(document, 'script', 'facebook-jssdk'));</script><link rel="stylesheet" href="/data/livechat.css" /><div class="fb-chat-popup"><div class="fb-page-header"><i class="glyphicon glyphicon-comment"></i> <span class="title">Hỗ Trợ Trực Tuyến</span></div><div class="fb-page-box"><div class="fb-page" data-href="https://www.facebook.com/muasim24h.vn/?fref=ts" data-height="350" data-width="300" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="false" data-tabs="messages" data-show-posts="false"></div><div class="chat-single">Hotline: 0961003003 - 0996003003</div></div></div><meta name="google-site-verification" content="ruf74fkJ4rjRe_xVuvo0r741UOxnxGGnGYN1Stitfwk" /><!-- Google Tag Manager (noscript) --><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N3ZS6BF"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><!-- End Google Tag Manager (noscript) --><meta name="google-site-verification" content="o9rWsUnaZeUoYLk7PLIvVoNTh6X8l_5gHjJV6y6L58M" /><script>$(document).ready(function () {
                                                                                                                                                    $("head").append('<link rel="stylesheet" href="https://muasim24h.vn/stvfont/style.css">');
                                                                                                                                                    $(".facebook").click(function () {
                                                                                                                                                        window.open('http://www.facebook.com/sharer.php?s=100&p[url]=http%3A%2F%2Fmuasim24h.vn%2F&p[images][0]=http%3A%2F%2Fmuasim24h.vn%2Fimages%2Ffb.jpg&p[title]=Sim+S%E1%BB%91+%C4%90%E1%BA%B9p+Gi%E1%BA%A3m+Gi%C3%A1.+Mua+Sim+S%E1%BB%91+%C4%90%E1%BA%B9p+%C4%90%E1%BA%A7u+S%E1%BB%91+M%E1%BB%9Bi+Gi%C3%A1+R%E1%BA%BB&p[summary]=', 'sharer', 'toolbar=0,status=0,width=548,height=425');
                                                                                                                                                        return false;
                                                                                                                                                    });
                                                                                                                                                    w = $(document).width();
                                                                                                                                                    if (w >= 1024) {
                                                                                                                                                        $("a.dropdown-toggle").each(function (index) {
                                                                                                                                                            href = $(this).attr('href');
                                                                                                                                                            text = $(this).text();
                                                                                                                                                            $(this).attr('href', 'Sim-So-Dep-' + text.trim() + '.html');
                                                                                                                                                        });
                                                                                                                                                        $("a.dropdown-toggle").click(function () {
                                                                                                                                                            window.location = $(this).attr('href');
                                                                                                                                                        })
                                                                                                                                                    }
                                                                                                                                                    $("button[name='submit']").click(function () {
                                                                                                                                                        sim = $("#sim").val();
                                                                                                                                                        if (sim.length == 10 || sim.length == 11) {
                                                                                                                                                            window.location = "/" + sim + ".html";
                                                                                                                                                            return false;
                                                                                                                                                        }
                                                                                                                                                    })
                                                                                                                                                })
                                                                                                                        </script>
                                                                                                                        <script type="text/javascript" async="async" src="/myscript.js"></script>
                                                                                                                        <script type="text/javascript" src="/apps/js/wow.min.js">

                                                                                                                        </script>
                                                                                                                        <script>new WOW().init();</script>
                                                                                                                        <div class="phonering-alo-phone phonering-alo-green phonering-alo-show " id="phonering-alo-phoneIcon" style="left: -40px; top: 470px; display: block;">
                                                                                                                            <div class="phonering-alo-ph-circle"></div>
                                                                                                                            <div class="phonering-alo-ph-circle-fill"></div>
                                                                                                                            <a href="tel:0961003003"></a>
                                                                                                                            <div class="phonering-alo-ph-img-circle">
                                                                                                                                <a href="tel:0961003003"></a>
                                                                                                                                <a href="tel:0961003003" class="pps-btn-img " title="Liên hệ">
                                                                                                                                    <img src="https://muasim24h.vn/data/favicon/v8TniL3.png" alt="Liên hệ" width="50" onmouseover="this.src = 'http://muasim24h.vn/data/favicon/v8TniL3.png';" onmouseout="this.src = 'http://muasim24h.vn/data/favicon/v8TniL3.png';"></a>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        </body>
                                                                                                                        </html>
