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
        <title>Thanh toán</title>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
   
    <body>
        <div class="container-fluid">
        <div class="container-fluid tophotline hidden-xs">
            <div class="container">
                <div class="pull-left wow fadeInRight">       
                    <i class="glyphicon glyphicon-calendar"></i> Hôm nay: 23/03/2019</div>
                <div class="cart wow fadeInLeft" data-toggle="modal" data-target="#myModal" >
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
                </div>
                <div class="clearfix"></div>
                <%@ include file="menu_top.jsp" %>
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
                                            <a href="">
                                                <img alt="" id="anh1" height="44px" src="/data/favicon/logo.png" style="display:none; margin-left: 36px;" width="44px" ></a>
                                            <div class="input-group">
                                                <input name="sim" id="sim"  type="tel"  value="" class="form-control pull-left popover-dismiss" placeholder="Nhập số sim bạn cần tìm" data-container="body" data-toggle="popover" data-placement="bottom" data-content=" - Sử dụng dấu <span class='red'>x</span> đại điện cho 1 số và dấu <span class='red'>*</span> đại điện cho một chuỗi số. <br /> + Để tìm sim bắt đầu bằng 098, quý khách nhập vào 098*<br /> + Để tìm sim kết thúc bằng 888, quý khách nhập vào *888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 888, nhập vào 098*888<br /> + Để tìm sim bên trong có số 888, nhập vào 888<br /> + Để tìm sim bắt đầu bằng 098 và kết thúc bằng 808, 818, 828, 838, 848, 858, 868, 878, 888, 898 nhập vào 098*8x8<br /> " title="Hướng dẫn tìm kiếm sim"  />
                                                <span class="input-group-btn">
                                                    <button class="btn btn-warning strong" id="timsimx">Tìm sim</button>
                                                </span
                                                ></div>
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
                                            <input type="radio" value="1" name="type" /></div>
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
                            <%@ include file="menu_left.jsp" %>
                            <input name="submit" value="true" type="hidden" />
                        </nav>
                    </div>
                </div>
            </div>
            
             <div class="" id="main">
               <style>
                   #search_box1{
                       display: none !important;
                   </style>
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           <h1 class="panel-title">Thanh toán</h1>
                       </div>
                       <div class="panel-body">
                           <div class="table-condensed">
                               <table border="0" cellspacing="0" style="width:100%">
                                       <tbody>
                                           <tr>
                                               <td colspan="2">
                                                   <p style="margin-left:5px; text-align:left">Mua hàng và thanh toán </p>
                                                   <p style="margin-left:5px; text-align:left">Tại website  rất đơn giản cho tất cả khách hàng trên toàn quốc</p>
                                                   <p style="margin-left:5px; text-align:left">Quý khách đặt hàng trên website hoặc qua điện thoại</p>
                                                   <p style="margin-left:5px; text-align:left">Nhân viên của chúng tôi kiểm đơn hàng và thông báo cho quý khách</p>
                                                   <p style="margin-left:5px; text-align:left">Sau khi nhận được thông báo đơn hàng được chấp nhận tức 
                                                       <strong> <em>sim</em></strong> quý khách chọn mua vẫn còn
                                                   </p>
                                                   <p style="margin-left:5px; text-align:left">Quý khách có thể lựa chọn phương thức giao hàng và thanh toán thuận tiện và an toàn nhất cho quý khách</p>
                                                   <ul>
                                                       <li>
                                                           <p style="margin-left:5px; text-align:left">Nhân viên giao <em>sim</em> tận nơi thanh toán trực tiếp cho nhân viên</p>
                                                       </li>
                                                       <li>
                                                           <p style="margin-left:5px; text-align:left">Qua văn phòng giao dịch tại Hà Nội - Hồ Chí Minh - Cần Thơ mua 
                                                               <em>sim</em> và thanh toán trực tiếp
                                                           </p>
                                                       </li>
                                                       <li>
                                                           <p style="margin-left:5px; text-align:left">Chuyển 
                                                               <em>sim</em>
                                                               qua dịch vụ Cod nhân viên bưu điện mang tới nhà rồi thanh toán cho nhân viên bưu điện
                                                           </p>
                                                       </li>
                                                       <li>
                                                           <p style="margin-left:5px; text-align:left">Thanh toán chuyển khoản qua ngân hàng cho chúng tôi</p>
                                                       </li>
                                                   </ul>
                                                   <p style="margin-left:5px; text-align:left">
                                                       <strong>Chú ý:</strong>
                                                       Qúy khách muốn đến văn Phòng giao dịch trực tiếp cần gọi điện kiểm tra 
                                                       <em>sim cần mua</em>
                                                       trước xem còn hay hết
                                                   </p>
                                                   <p style="margin-left:5px; text-align:left">Và yêu cầu nhân viên hỗ trợ cung cấp địa chỉ Văn Phòng GD gần nơi quý khách nhất</p>
                                                   <p style="margin-left:5px; text-align:left">
                                                       <strong>Thanh toán:</strong>
                                                   </p>
                                                   <p style="margin-left:5px; text-align:left">Quý khách có thể lựa chọn 1 trong 3 cách thức thanh toán:</p>
                                                   <p style="margin-left:5px; text-align:left">1. Đối với khách hàng tại 
                                                       <strong>Hà Nội - TP.HCM - Cần Thơ</strong>
                                                   </p>
                                                   <p style="margin-left:5px; text-align:left">Thanh toán trực tiếp cho nhân viên giao hàng hoặc tại văn phòng giao dịch của chúng tôi</p>
                                                   <p style="margin-left:5px; text-align:left">2. Thanh toán trực tiếp cho nhân viên bưu điện khi nhận sim hoặc nhân viên của chúng tôi khi mang sim tới giao cho quý khách. (Hình thức này quý khách cần phải thanh toán phí chuyển phát trước)</p>
                                                   <p style="margin-left:5px; text-align:left">3. Thanh toán trước qua chuyển khoản sau khi chúng tôi xác nhận thanh toán sẽ chuyển sim qua đường chuyển phát đến địa chỉ quý khách yêu cầu.</p>
                                                   <p style="margin-left:5px; text-align:left">Nếu quý khách Áp dụng phương thức 3, vui lòng thông báo lại cho chúng tôi khi đã thanh toán và cung cấp đia chỉ nhận sim qua điện thoại hoặc đặt hàng qua website.</p>
                                                   <p style="margin-left:5px; text-align:left">Quý khách cần hỗ trợ thêm xin vui lòng gọi tới số  
                                                       <span style="color:#FF0000"> </span>
                                                   </p>
                                                   <p style="margin-left:5px; text-align:left">Dưới đây là tài khoản chúng tôi nhận thanh toán.</p>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td>
                                                   <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG BIDV</strong>
                                                   </p>
                                                   <p style="margin-left:10px">Chi nhánh: Sơn Tây</p>
                                                   <p style="margin-left:10px">
                                                       <strong>www.<cite>bidv.com.vn</cite><cite> </cite></strong>
                                                   </p>
                                                   <p style="margin-left:10px">
                                                       <strong>Nguyễn Xuân Thắng</strong>
                                                   </p>
                                                   <p style="margin-left:10px">STK: 
                                                       <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">45110000013306</strong>
                                               </p>
                                               <p style="margin-left:10px"> </p>
                                               </td>
                                               <td style="text-align:center">
                                                   <img alt="" class="img-responsive img-responsive img-fluid" height="98" src="/data/nganhang/bidv%5B1%5D.gif" style="float:left;" width="200" />
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG TECHCOMBANK</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Sơn Tây</p>
                                               <p style="margin-left:10px">
                                                   <strong>www.techcombank.com.vn</strong>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong>Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">19022113579999</strong>
                                               </p>
                                               <p style="margin-left:10px"> </p>
                                               </td>
                                               <td>
                                                   <p>
                                                       <img alt="" class="img-responsive img-responsive img-fluid" height="105" src="/data/nganhang/techcombank%5B1%5D.jpg" style="float:left;" width="200" /> </p>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG MARITIME BANK</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Sơn Tây</p>
                                               <p style="margin-left:10px">
                                                   <strong>www.dongabank.vn</strong>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">
                                                   <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 11pt;">
                                                       <span style="list-style-type: none; padding: 0px; margin: 0px; font-size: 11pt;">Nguyễn Xuân Thắng</span>
                                                           
                                                   </span>
                                                   </strong>
                                               </p>
                                               <p style="margin-left:10px">STK:
                                                       <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">03301017900486</strong>
                                               </p>
                                               <p style="margin-left:10px"> </p>
                                               </td>
                                               <td>
                                                   <p style="text-align:right">
                                                       <img alt="" class="img-responsive img-responsive img-fluid" height="119" src="/data/nganhang/logo-maritimebank.jpg" style="float: left;" width="235" /> </p>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG VIETCOMBANK  </strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Hà Tây</p>
                                               <p style="margin-left:10px">
                                                   <strong>www.vietcombank.com.vn</strong>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong>Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">0691009797999</strong>
                                               </p>
                                               <p style="margin-left:10px"> </p>
                                               </td>
                                               <td>
                                                   <p>
                                                       <img alt="" class="img-responsive img-responsive img-fluid" height="105" src="/data/nganhang/vietcombank%5B1%5D.jpg" width="200" /> </p>
                                               </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                   <strong>NGÂN HÀNG AGRIBANK</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Sơn Tây</p>
                                               <p style="margin-left:10px">www.agribank.com.vn</p>
                                               <p style="margin-left:10px">
                                                   <strong>Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">2203205310416</strong>
                                           </p>
                                           <p style="margin-left:10px"> </p>
                                           </td>
                                           <td>
                                               <p>
                                                   <img alt="" class="img-responsive img-responsive img-fluid" height="99" src="/data/nganhang/agribank%5B1%5D.jpg" width="200" /> </p>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                   <strong>NGÂN HÀNG VIETINBANK</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Sơn Tây</p>
                                               <p style="margin-left:10px">
                                                   <strong>www.vietinbank.vn</strong>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong>Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                   <strong>101004129038</strong>
                                               </p>
                                               <p style="margin-left:10px"> </p>
                                           </td>
                                           <td style="text-align:center">
                                               <img alt="" class="img-responsive img-responsive img-fluid" height="123" src="/data/nganhang/Untitled-1%5B1%5D.jpg" style="float: left;" width="200" /> 
                                       </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG MB</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Cầu Giấy</p>
                                               <p style="margin-left:10px">
                                                   <span style="background-color:rgb(255, 255, 255); font-family:arial,sans-serif; font-size:small">
                                                       <strong>www.mbbank.com.vn</strong>
                                                   </span>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                       <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">
                                                       <strong>8300101959999</strong>
                                                           
                                                   </strong>
                                                   <br /> 
                                               </p>
                                           </td>
                                           <td style="text-align:center">
                                                   <img alt="" class="img-responsive img-responsive img-fluid" height="119" src="/data/nganhang/logo-mb.png" style="float: left;" width="235" />
                                           </td>
                                       </tr>
                                       <tr>
                                           <td>
                                               <p style="margin-left:10px">
                                                       <strong>NGÂN HÀNG SACOMBANK</strong>
                                               </p>
                                               <p style="margin-left:10px">Chi nhánh: Hồ Chí Minh</p>
                                               <p style="margin-left:10px">
                                                   <span style="background-color:rgb(255, 255, 255); font-family:arial,sans-serif; font-size:small">
                                                       <strong>www.sacombank.com.vn</strong>
                                                   </span>
                                               </p>
                                               <p style="margin-left:10px">
                                                   <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">Nguyễn Xuân Thắng</strong>
                                               </p>
                                               <p style="margin-left:10px">STK: 
                                                       <strong style="list-style-type: none; font-family: Arial, Helvetica, sans-serif; padding: 0px; margin: 0px; color: rgb(0, 0, 0); font-size: 14.6667px; line-height: normal;">
                                                       <strong>060186161354</strong>
                                                           
                                                   </strong>
                                               </p>
                                           </td>
                                           <td style="text-align:center">
                                                   <img alt="" class="img-responsive img-fluid" height="119" src="/data/nganhang/logo-sacombank.jpg" style=" float: left;" width="235" /><br /> 
                                           </td>
                                       </tr>
                                       </tbody>
                               </table>
                           </div>
                       </div>
                   </div>
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           <h2 class="panel-title">Tin liên quan</h2>
                       </div>
                       <div class="panel-body">
                           <ul style="max-height: 300px; overflow: auto;">
                               <li>
                                   <a href="">Phong Thủy</a>
                               </li>
                               <li>
                                   <a href="">Bán sim trả góp</a>
                               </li>
                               <li>
                                   <a href="">Cầm cố sim</a>
                               </li>
                               <li>
                                   <a href="">Thu Mua Sim</a>
                               </li>
                               <li>
                                   <a href="">Thanh toán</a>
                               </li>
                               <li>
                                   <a href="">Giới thiệu</a>
                               </li>
                               <li>
                                   <a href="">Hướng dẫn</a>
                               </li>
                               <li>
                                   <a href="">Liên hệ</a>
                               </li>
                           </ul>
                       </div>
                   </div>
           </div>

            <%@ include file="menu_right.jsp" %>

        </div>
    </div>
<script src="js/sim.js" type="text/javascript"></script>
 <%@ include file="footer.jsp" %>
</body>
</html>
