<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu left</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.0/css/all.css"
	integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y"
	crossorigin="anonymous">
<link href="<c:url value="/resource/css/main.css"/>" rel="stylesheet"
	type="text/css" />

<style>
.menu-r {
	margin: -15px;
	padding: 0;
	width: 100%;
}

.menu-r li:hover {
	background: #fdfafa;
}

.menu-r li {
	list-style: none;
	width: 100%;
	padding: 8px 15px;
	border-bottom: 1px solid #ddd;
}

.menu-r>li>a {
	font-weight: bold;
	display: block;
}

.menu-r>li:last-child {
	border: none;
	margin-bottom: -10px;
	display: block;
}

.menu-r>li:hover:after {
	float: right;
}

.menu-r>li>ul {
	display: none;
}

.menu-r>li>ul>li {
	padding: 5px 10px;
}

.menu-r>li:hover>ul {
	display: block;
	margin-top: -28px;
	width: 200px;
	background: #fff;
	padding: 0;
	margin-left: 200px;
	position: absolute;
	z-index: 10000;
	border-radius: 0 6px 6px 0;
	box-shadow: 2px 2px 4px #ddd;
}

.menu-r>li>a {
	font-weight: bold;
	text-transform: uppercase;
}
/*dưới*/
#menunew {
	padding-left: 15px;
	padding-top: 15px;
}

#menunew>ul>li>ul>li {
	display: inline-block;
	vertical-align: top;
	width: 50%;
	padding: 0;
	margin: 0;
}

#menunew>ul>li>ul>li>a {
	display: none;
}

#menunew>ul>li>ul {
	position: absolute;
	margin-left: 170px;
	margin-top: -30px;
	padding: 0;
	width: 500px;
}

#menunew>ul>li>ul>li>ul {
	padding: 0;
	margin: 0;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

		<li class="dropdown"><a href="" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="net"></span> <a
				id="vinaPhone">VinaPhone<a></a> <span class="caret"></span></a></li>
		<li class="dropdown"><a href="" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="net"></span> <a
				id="mobiFone">Mobifone<a></a> <span class="caret"></span></a></li>
		<li class="dropdown"><a href="" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="net"></span> <a id="viettel">Viettel<a></a>
					<span class="caret"></span></a></li>
		<li class="dropdown"><a href="" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="net"></span> <a
				id="vietnamMobile">VietnamMobile<a></a> <span class="caret"></span></a></li>
		<li class="dropdown"><a href="" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="net"></span> <a id="gmobile">Gmobile<a></a>
					<span class="caret"></span></a></li>

	</div>
	<div class="clearfix"></div>
	</nav>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo giá tiền
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" id="over100tr" >Từ 100 Triệu trở lên</a> <a
				id="50to100tr" class="list-group-item">Từ 50Triệu đến 100 Triệu</a>
			<a id="20to50tr" class="list-group-item">Từ 20Triệu đến 50 Triệu</a>
			<a id="10to20tr" class="list-group-item">Từ 10Triệu đến 20 Triệu</a>
			<a id="5to10tr" class="list-group-item">Từ 5Triệu đến 10 Triệu</a> <a
				id="2to5tr" class="list-group-item">Từ 2Triệu đến 5 Triệu</a> <a
				id="1to2tr" class="list-group-item">Từ 1Triệu đến 2 Triệu</a> <a
				id="500kTo1tr" class="list-group-item">Từ 500,000Đ đến 1 Triệu</a>
			<a id="0to500k" class="list-group-item">Từ 500,000Đ trở xuống</a>
		</div>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo thể loại
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href=""> <strong>Sim Tứ Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lục Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Ngũ Quý</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lộc
					Phát</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Thần
					Tài</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim ông địa</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tiến
					đơn</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Tiến
					đôi</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 2</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 3</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Taxi 4</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Lặp</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim kép</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim đối</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Đảo</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim gánh</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Đặc
					Biệt</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim Năm
					Sinh</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim đầu số
					cổ</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tam Hoa
					Đơn</strong>
			</a> <a class="list-group-item" href=""> <strong>Sim tam Hoa
					Kép</strong>
			</a>
		</div>
	</div>
	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim theo đầu số
			</h2>
		</div>
		<ul class="list-group">
			<a class="list-group-item" href="">Đầu Số 096 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 097 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 098 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 091 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 094 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 090 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 093 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 092 Vietnamobile</a>
			<a class="list-group-item" href="">Đầu Số 099 Gmobile</a>
			<a class="list-group-item" href="">Đầu Số 086 Viettel</a>
			<a class="list-group-item" href="">Đầu Số 088 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 089 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 081 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 082 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 083 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 084 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 085 VinaPhone</a>
			<a class="list-group-item" href="">Đầu Số 070 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 076 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 077 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 078 MobiFone</a>
			<a class="list-group-item" href="">Đầu Số 079 MobiFone</a>
		</ul>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-list"></i> Tìm sim tứ quý
			</h2>
		</div>
		<div class="list-group">
			<a class="list-group-item" href="">Sim Tứ Quý 9999</a> <a
				class="list-group-item" href="">Sim Tứ Quý 8888</a> <a
				class="list-group-item" href="">Sim Tứ Quý 7777</a> <a
				class="list-group-item" href="">Sim Tứ Quý 6666</a> <a
				class="list-group-item" href="">Sim Tứ Quý 5555</a> <a
				class="list-group-item" href="">Sim Tứ Quý 4444</a> <a
				class="list-group-item" href="">Sim Tứ Quý 3333</a> <a
				class="list-group-item" href="">Sim Tứ Quý 2222</a> <a
				class="list-group-item" href="">Sim Tứ Quý 1111</a> <a
				class="list-group-item" href="">Sim Tứ Quý 0000</a>
		</div>
	</div>

	<div class="panel panel-primary hidden-xs">
		<div class="panel-body">

			<script type="text/javascript">
    
    $( document ).ready(function() {
        $("#vinaPhone").click(function(){
        	loadDataByMenu(3, null, null, 1);
        }); 
        $("#mobiFone").click(function(){
        	loadDataByMenu(2, null, null, 1);
        }); 
        $("#viettel").click(function(){
        	loadDataByMenu(1, null, null, 1);
        }); 
        $("#vietnamMobile").click(function(){
        	loadDataByMenu(4, null, null, 1);
        }); 
        $("#gmobile").click(function(){
        	loadDataByMenu(5, null, null, 1);
        }); 
        $("#over100tr").click(function(){
        	loadDataByMenu(null, 100000000, 2000000000, 1);
        }); 
        $("#50to100tr").click(function(){
        	loadDataByMenu(null, 50000000, 100000000, 1);
        }); 
        $("#50to100tr").click(function(){
        	loadDataByMenu(null, 50000000, 100000000, 1);
        }); 
        $("#20to50tr").click(function(){
        	loadDataByMenu(null, 20000000, 50000000, 1);
        }); 
        $("#10to20tr").click(function(){
        	loadDataByMenu(null, 10000000, 20000000, 1);
        }); 
        $("#5to10tr").click(function(){
        	loadDataByMenu(null, 5000000, 10000000, 1);
        }); 
        $("#2to5tr").click(function(){
        	loadDataByMenu(null, 2000000, 5000000, 1);
        }); 
        $("#1to2tr").click(function(){
        	loadDataByMenu(null, 1000000, 2000000, 1);
        }); 
        $("#500kTo1tr").click(function(){
        	loadDataByMenu(null, 500000, 1000000, 1);
        }); 
        $("#0to500k").click(function(){
        	loadDataByMenu(null, 0, 500000, 1);
        }); 
    });
    
       function loadDataByMenu(network, priceFrom, priceTo, page){
            $.ajax({
                type: "POST", // HTTP method POST or GET
                url: '${pageContext.request.contextPath}/sim/findSimDetail', 
                dataType: 'json',
                 data: {
                     page: page,
                     size: 20,
                     networkId: network,
                     priceFrom: priceFrom,
                     priceTo: priceTo
                 },
                success: function(data) {
                    console.log(data); 
                    $('#appendBtnPage').empty();
                    $('#appendData').empty();
                    data.listSim.forEach(v => {
                        var tr = document.createElement('tr');
                        var tdRealNumber =  document.createElement('td');
                        tdRealNumber.innerHTML = "<strong class='font-16 sim'>" + v.realNumber + "</strong>";
                        var tdPrice = document.createElement('td');
                        tdPrice.innerHTML = v.price +" VNĐ";
                        var tdTotalNumber = document.createElement('td');
                        tdTotalNumber.innerHTML =v.sumOfNumbers;
                        
                        var tdNetword =  document.createElement('td');
                        if(v.netword.id==1){
                            tdNetword.innerHTML ="<span class='network n1'></span>";
                            }
                            if(v.netword.id==2){
                                tdNetword.innerHTML ="<span class='network n2'></span>";
                            }
                            if(v.netword.id==3){
                                tdNetword.innerHTML ="<span class='network n3'></span>";
                            }
                            if(v.netword.id==4){
                                tdNetword.innerHTML ="<span class='network n3'></span>";
                            }
                            if(v.netword.id==5){
                                tdNetword.innerHTML ="<span class='network n5'></span>";
                            }
                            
                        var tdCart = document.createElement('td');
                        tdCart.innerHTML ="<a rel='nofollow'' title='Thêm vào giỏ hàng' href='${pageContext.request.contextPath}/user/addSimToCart?simId="+v.id+"' class='addcarts' data-gia='4.5'> <i class='glyphicon glyphicon-shopping-cart'> </i> </a>";
                        
                        tr.append(tdRealNumber);
                        tr.append(tdPrice);
                        tr.append(tdTotalNumber);
                        tr.append(tdNetword);
                        tr.append(tdCart);
                        $('#appendData').append(tr);
                    });
                    if(data.listSim.length==0){
                        var tr = document.createElement('tr');
                        tr.append('Không tìm thấy kết quả.');
                        $('#appendData').append(tr);
                    }
                    data.listPage.forEach(p => {
                        var btn = document.createElement('BUTTON');
                        btn.innerHTML = p;
                        btn.onclick = function(){
                            loadData(p);
                          };
                        $('#appendBtnPage').append(btn);
                    });
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
