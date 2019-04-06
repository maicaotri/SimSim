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
        <title>Thu mua sim</title>
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
                            <h1 class="panel-title">Thu Mua Sim</h1>
                        </div>
                        <div class="panel-body">
                            <div class="table-condensed">
                                <p style="text-align: center;">
                                    <a href="" target="_blank">
                                        <strong></strong>
                                    </a>
                                </p>
                                <p>
                                    <span style="font-size:18px;">
                                        <a href="" target="_blank">
                                            <strong>Chuyên Thu Mua Sim Số Đẹp Đã Qua Sử Dụng Giá Cao</strong>
                                        </a>
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">- Bạn chưa thực sự hài lòng với số sim mà bạn đang sử dụng.<br />- 
                                        <em>
                                            <strong>Sim điện thoại</strong>
                                        </em> của bạn đang dùng tuy đẹp nhưng lại không hợp phong thủy và tuổi của bạn và chưa mang lại may mắn cho bạn.
                                        <br />- Bạn được người thân cho, tặng hoặc đang sở hữu quá nhiều 
                                        <em><strong>sim số đẹp</strong></em>
                                        và có sim không sử dụng đến.<br />- Bạn vẫn đang phải tốn tiền cho những 
                                        <em><strong>sim số đẹp</strong></em>
                                        mà bạn không sử dụng và có thể bị nhà mạng thu hồi bất cứ lúc nào nếu quên nạp tiền.
                                        <br />- Bạn đang muốn đổi một số sim khác đẹp hơn....<br />- Bạn đang muốn tìm một nơi để có thể 
                                        <em><strong>bán sim</strong></em>
                                        với giá cao nhất và muốn bảo mật thông tin giao dịch.
                                    </span>
                                    <br /> 
                                </p>
                                <p style="text-align: center;">
                                    <span style="font-size:16px;">
                                        <a href="">
                                            <img alt="" class="img-responsive img-fluid" height="263" src="/data/images/muasim24h_thumuasim.jpg" width="448" /></a>
                                    </span>
                                    <em style="font-size: 16px;">( Ảnh minh họa )</em>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <em></em>
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>Đến với 
                                            <a href="">Chúng tôi</a>
                                            chúng tôi là lựa chọn sáng suốt nhất và chắc chắn bạn sẽ hài lòng với dịch vụ thu mua sim và trao đổi số của chúng tôi. Quý khách yên tâm là sẽ bán được 
                                            <a href="">sim s</a>
                                            <a href="">ố đẹp</a> với giá tốt nhất thị trường.
                                        </strong>
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>• Điều kiện: Chúng tôi chỉ thu mua lại sim số đẹp khi thỏa mãn các điều kiện sau:</strong>
                                        <br />- Là những sim được chúng tôi định giá sim mua trên 1 triệu<br />- Là 
                                        <a href="">sim so dep</a> 10 số,11 số mạng viettel, mobifone, vinaphone, vietnamobile, gmobile<br />- Những loại sim số đẹp như 
                                        <a href="">sim vip</a>, 
                                        <a href="">sim tứ quý</a>, 
                                        <a href="">sim ngũ quý</a>, 
                                        <a href="">sim lục quý</a>, 
                                        <a href="">sim tam hoa</a>, 
                                        <a href="">sim thần tài</a>, 
                                        <a href="">sim lộc phát</a> , 
                                        <a href="">sim taxi</a>, 
                                        <a href="">sim năm sinh</a>, 
                                        <a href="">sim phong thủy </a>
                                        <br />- Tất cả sim đều chuyển tên chính chủ được, sim không sảy ra tranh chấp, khiếu nại
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>• Thủ tục mua lại sim Vip</strong>
                                        <br />-  Là chính chủ sim cần bán, mang theo chứng minh thư gốc cùng chúng tôi ra điểm giao dịch làm thủ tục sang tên.<br />- Nếu là sim của bạn, nhưng đứng tên người khác thì người đứng hộ phải đi cùng ra làm thủ tục
                                    </span>
                                    <br />
                                    <br />
                                    <span style="font-size:18px;">
                                        <strong>• </strong>
                                    </span>
                                    <span style="color:#000000;">
                                        <span style="font-size:20px;">
                                            <strong>Quý khách lưu ý</strong>
                                        </span>
                                    </span>
                                    <span style="font-size:18px;">
                                        <span style="color:#FF0000;">
                                            <strong>: </strong>
                                            <strong>Chúng tôi có nhân viên hỗ trợ giao dịch tại 64 tỉnh thành trên toàn quốc</strong>
                                        </span>
                                        . Sau khi cùng quý khách thống nhất xong về giá, sẽ có nhân viên của chúng tôi liên hệ ngay với quý khách, đến tận địa chỉ quý khách muốn, cùng quý khách ra điểm giao dịch của nhà mạng để làm thủ tục mua bán và thanh toán sim (tiền mặt hoặc chuyển khoản đều được). 
                                        <strong>
                                            <span style="color:#FF0000;">Mọi thủ tục nhanh gọn không quá 30 phút</span>
                                        </strong>.
                                    </span>
                                    <span style="font-size:16px;"></span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">• 
                                        <strong>Dịch vụ khác</strong><br />
                                        <strong>
                                            <a href="">Cam sim so dep</a> 
                                        </strong>- 
                                        <a href="">
                                            <strong>Sim Tra Gop</strong>
                                        </a> - 
                                        <strong>Thue Sim Vip</strong>
                                        - <strong>Thue Sim So Dep - 
                                            <a href="">Thu mua sim so dep</a>
                                        </strong>
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>Muasim24h.vn</strong>
                                        tự hào là trang web lớn nhất & uy tín nhất dẫn đầu thị trường 
                                        <em><strong>sim số đẹp</strong></em>
                                        tại Việt Nam hiện nay.
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">Hãy liên hệ ngay với chúng tôi khi bạn có nhu cầu bán hoặc mua sim số đẹp. Chúng tôi có thể trao đổi mua bán trực tiếp với bạn trên toàn quốc trong thời gian sớm nhất.</span>
                                    <br /> 
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>► Tư vấn</strong>
                                        <strong> thu mua sim số đẹp</strong>
                                        <br />Mr. Thắng ( Quản lý )<br />Mobile: 
                                        <strong>098.459.8888 </strong>
                                        (có thể gọi hoặc sms)
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>Rất hân hạnh được phục vụ quý khách!</strong>
                                    </span>
                                </p>
                                <p>
                                    <span style="font-size:16px;">
                                        <strong>Sự hài lòng của quý khách là thành công lớn nhất của chúng tôi</strong>
                                    </span>
                                </p>
                                <p>
                                    <strong>

                                    </strong>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">Tin liên quan</h2>
                        </div>
                        <div class="panel-body">
                            <ul style="max-height: 300px; overflow: auto;">
                                <li><a href="">Phong Thủy</a>
                                </li><li><a href="">Bán sim trả góp</a>
                                </li><li><a href="">Cầm cố sim</a>
                                </li><li><a href="">Thu Mua Sim</a>
                                </li><li><a href="">Thanh toán</a></li>
                                <li><a href="">Giới thiệu</a></li><li>
                                    <a href="">Hướng dẫn</a></li><li>
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
 