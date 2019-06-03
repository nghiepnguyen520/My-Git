

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	@charset "UTF-8";
html,body {
	width: 100%;
	height: 100%;
	
}
#body-login{
	background-color: /* #00989C */ black;
	
}
#body-flex-login {
	display: flex;
	height:100%;
	 justify-content: center;
	align-items: center; 
}
#container-login{
	display:block;
	width: 320px;
	height: auto;
	background-color: white;
	padding: 24px;
}

#header-top {
	font-size: 20px;
	color: #878787;
}
.actived{
	color: #DA7C79;
}
 form{
	margin-top: 50px;
}
#container-center-login input[type-submit]{
	margin: 50px;
	color: white;
	font-size: 10px;
}
.material-textinput {
	height: 38px;
	border: 0;
	background-color: #D8D8D8;
	width: 100%;
	margin-top: 20px;
	
}

.material-primary-button {
	height: 38px;
	border: 0;
	background-color: #00989C;
	width: 100%;
	margin-top: 20px;
}

.container-signup-form {
	display: none;
}
/*  trang chu*/
#header {
	height: 662px;
	background-image:linear-gradient(rgba(0,0,0,0.42), rgba(0,0,0,0.42)), url("../Image/background_trangchu.jpg") ;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.none_nav {
	background: none !important;
	border: none !important;
}

.navbar-center {
	margin-left: 20% !important;
	
}

.navbar-nav a {
	color: white !important;
	font-weight: bolder;
	font-size: 20px;
}
.active >  a {
	color: black !important;
	background: none !important;
}

.open > a{
	color: black !important;
	background: none !important;
}
.dropdown-menu {
	background-color: black !important;
}

.event_header {
	text-align: center;
	margin-top: 300px;
}

.event_header > span {
	color: white;
	font-size: 25px;
}

.event_header > button {
	color: white;
	background-color: #00989C ;
	/* width: 150px;
	height: 50px; */
	font-size: 20px;
	font-weight: bolder;
}

.icon {
	width: 100px;
	height: 100px;
}

#info {
	text-align: center;
	margin-top: 50px;
}

#info > span {
	margin-top: 20px;
	
}

#title-sanpham  {
	margin-top: 100px;
	text-align: center;
	 font-size: 30px; 
	font-weight: bolder;
}

.sanpham {
	margin-top: 45px;
	background-color: #FFF;
	border: 1px solid #CCC;
	border-radius: 5px;
	box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	padding-bottom: 16px;
}
.sanpham img {
	height: 255px;
}

.gia {
	font-size: 15px;
	color: red;
	margin-bottom: 16px;
	padding-bottom: 16px;
}

#footer {
	
	position: relative;
	margin-bottom:0;
    top: 105px !important	;
	background-color: grey !important;
	color: white !important;
	padding: 38px;
}
#footer p {
	text-align: center;
}

#footer textarea {
	border: 0px;
	background-color: #D8D8D8;
	width: 100%;
}
.title-footer {
	font-size: 32px;
	font-weight: bolder;
}

/* them san pham */
#chitietsanpham{
	display: none;
}

.btn-chitiet{
	display: block;
	margin-right: 0;
	margin-left: auto;
}

/* end san pham */
@media (max-width:575px) {
	.navbar-center {
	margin-left: 0 !important;
	margin-top: 10%;
	}
}

@media (min-width:576px) and (max-width:767px){
	.navbar-center {
	margin-left: 0 !important;
	margin-top: 10%;
	}
}

@media (min-width:768px) and (max-width:991px) {
	.navbar-center {
	margin-left: 5% !important;
	margin-top: 10%;
	}
}

@media (min-width:992px) and (max-width:1199px) {
}

@media (max-width:575px) {
}
/* Id header chitiet*/
#headerChitiet {
	padding: 10px;
    background-color: grey; !imporatant
}
img {
	height: 300px;
}

/**/
	
</style>
<jsp:include page="header.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông tin sản phẩm</title>
</head>
<body >

	<div id="headerChitiet" class="container-fluid header">
		<nav class="navbar navbar-default none_nav">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#"><img src='<c:url value ="/resources/img/hinhanh/shoes-icon.png"/>' style="height: 100px; width: 100px;"></a>
			    </div>
			
			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav navbar-center">
			        <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
			        <li class="active"><a href="../">TRANG CHỦ</a></li>
			
			        <li><a href="#">DỊCH VỤ</a></li>
			        <li><a href="#">LIÊN HỆ</a></li>
			        
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="../dangnhap/" >ĐĂNG NHẬP</a></li>
			        <li><a href="../dangnhap/" >ĐĂNG KÝ</a></li>
			        <li><a href="../giohang/"><img src='<c:url value ="/resources/img/hinhanh/cart-icon.png"/>' style="height: 40px; width: 40px;"></a>
			        <div class="soluonggiohang" style="
					        	color: orange;
					        	font-weight: bold;
					        	font-size: 15px;
					        ">
					         <span
					        >${soLuongGioHang} </span>
			        </div>
			        </li>
			       
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
		</nav>
		
	</div>

			<div class="container">
				<div class="row" style="margin-top: 12px;">
				
					<div class="col-sm-3 col-md-3">
						<img alt="hinh" src='<c:url value="/resources/img/hinhanh/${sanpham.getHinhsanpham()}"></c:url>'/>
					</div>	
					
					<div class="col-sm-1 col-md-1">
						<%--  <c:forEach var="chitietsanpham" items="${sanpham.getChitietsanpham()}">
							<h4>${chitietsanpham.getSizesanpham().getMausanpham() }</h4>
						</c:forEach> --%>
					</div>
					
					<div class="col-sm-5 col-md-5">
					<table class="table">
						<tr>
							<td>MÃ SẢN PHẨM</td>
							<td>TÊN SẢN PHẨM</td>
							<td>GIÁ TIỀN</td>
							<td style="text-align: center;">TÁC VỤ	</td>
						</tr>
						<tr>
							<td class="masp" data-masp="${sanpham.getMasanpham()}">${sanpham.getMasanpham()}</td>
							<td class="tensp" data-tensp="${sanpham.getTensanpham()}">${sanpham.getTensanpham()}</td>
							<td class="giatien" data-giatien="${sanpham.getGiatien()}" >${sanpham.getGiatien()}</td>
							<td><button class="btn btn-primary btn-giohang">Thêm giỏ hàng</button></td>
						</tr>
					</table>
					</div>
					
					<div class="col-sm-3 col-md-3">
					<h3>MÔ TẢ</h3><br/>
						${sanpham.getMota()}
					</div>
				</div>
			</div>


	<div id="footer" class="container-fluid">
		<div class="row" 
			style="
			text-align: center;
			padding: 12px;
			">
				<div class="col-sm-6 col-md-6">
					<p><span class="title-footer">SLOGAN</span></p>
					<span>Shop giày SNEAKER là một trong số thương hiệu thời trang đầy uy tín</span>
				</div>
				
				<div class="col-sm-6 col-md-6">
					<p><span class="title-footer">LIÊN HỆ</span> <br></p>
					<span> Địa chỉ: Võ Trường Toản, Ninh Kiều, TPCT</span><br>
					<span>Email: sneaker@gmail.com</span> <br>
					<span>Điện thoại: 0932.256.369</span>
				</div>
		</div>
	</div>	
	
	
	
	<jsp:include page="footer.jsp"/>
</body>


</html>
