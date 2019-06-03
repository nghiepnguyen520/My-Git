<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	@charset "UTF-8";
	* {
	margin: 0;
	padding: 0;
}
.sanpham .img {
	height: 300px;
	width: 200px;	
}
html, body {
	height: 100%;
	width:100%;
	background-image: url("../img/hinhanh/background-header.jpg") !important;
}
.dk-left h1,.dn-right h1 {
	color: blue;
	text-align: center;
}

#from-dn {
	display:flex;
	height: 100%;
	justify-content: center;
	align-items: center;
	
	background-size: cover;
}
.txt_nhaplieu {
	border: 1px solid black;
	border-radius: 5px;
	height: 20px;
	padding-left: 2px;
	width: 100%;
}
/* css đăng nhập*/
.dn-right {
	border: 2px solid black;
	border-radius:8px;
	margin: 10px;
	padding: 10px;
	height: 350px;
	width:350px;
}
.dn-right #frm-dn {
		width:100%;
		position: relative;
		top:65px;
}
#btnDangNhap {
	margin: 10px;
	height: 50px;
	width: 120px;
	position: relative;
	left:100px;
	border: 2px solid black;
	border-radius:8px;
	font-size: 15px;
	font-weight:bold;
	background-color: white;
}
#btnDangNhap:hover {
	color: blue;
}
/*end đn*/



/* css đăng ký*/
.dk-left {
border: 2px solid black;
border-radius:8px;
margin: 10px;
padding: 10px;
height: 350px;
width:350px;
}
#btn_dk {
	margin: 10px;
	height: 50px;
	width: 120px;
	position: relative;
	left:100px;
	border: 2px solid black;
	border-radius:8px;
	font-size: 15px;
	font-weight:bold;
	background-color: white;
}
#btn_dk:hover {
	color: blue;
}
/*end đn*/

	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang đăng ký thông tin</title>

</head>
<body style="background-img:url("../img/hinhanh/background-header.jpg") !important;">

	<section id="from-dn">
	
		<div class="dk-left">
			<h1>
				Bạn chưa có tài khoản ?<br/> Hãy đăng ký !!
			</h1>
			<form action="" method="post">
				<p>Họ tên:</p>
				<input type="text" name="hoten"class="txt_nhaplieu"/>
				<p>Địa chỉ:</p>
				<input type="text" name="diachi" class="txt_nhaplieu"/>
				<p>CMND:</p>
				<input type="text" name="cmnd"  class="txt_nhaplieu"/>
				<p>Tài khoản:</p>
				<input type="text" name="email" class="txt_nhaplieu" />
				<p>Mật khẩu:</p>
				<input type="password" name="matkhau" class="txt_nhaplieu" />
				<p>Nhập lại mật khẩu:</p>
				<input type="password" name="nhaplaimatkhau" class="txt_nhaplieu"/><br/>
				<input type="submit" value="ĐĂNG KÝ" id="btn_dk" /></br>
				<span style="
				height: 15px;
				width: 15px;
				">${tb}</span>
			</form>
			
		</div>
		
		<div class="dn-right">
			<h1>
				ĐĂNG NHẬP
			</h1>
			<div id="frm-dn">
				<p>Tài khoản:</p>
				<input id="email" type="text" name="email" class="txt_nhaplieu" />
				<p>Mật khẩu:</p>
				<input id="matkhau" type="password" name="matkhau" class="txt_nhaplieu" /><br/>
				<input id="btnDangNhap" type="submit" value="ĐĂNG NHẬP" />
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>

</html>