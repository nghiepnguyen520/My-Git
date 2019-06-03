<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" 
integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang chủ đồ án</title>
<jsp:include page="header.jsp"/>
</head>
<body>
	<h1>
		Được cái hello chứ đéo có gì ?
	</h1>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3" id="col1">
				<a href="dangnhap/">Đăng nhập</a>
			</div>
			
			<div class="col-md-3" id="col2">
				<p>aaaaaaaaaa</p>
				<c:choose>
					<c:when test="${chucaidau != null}">
						<li><a href="dangnhap/">${chucaidau}</a></li>
					</c:when>
					<c:otherwise>
						<li><a href = "dangnhap/">error</a></li>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="col-md-3" id="col3">
				<p>aaaaaaaaaa</p>
			</div>
			
			<div class="col-md-3" id="col4">
				<p>aaaaaaaaaa</p>
			</div>
		</div>
		<a href="chitiet/${sanpham.getMasanpham()}">
			<div>
				<c:forEach var="sanpham" items="${listsanpham}">
					<div class="col-md-3">
						<div class = "sanpham">
							<img alt="hinh" src='<c:url value="/resources/img/hinhanh/${sanpham.getHinhsanpham()}"></c:url>'/>
							<span>${sanpham.getTensanpham()}</span>
							<span class="gia">${sanpham.getGiatien()}</span>
						</div>
					</div>
				</c:forEach> 
			</div>
		</a>
		
	</div>
	<jsp:include page="footer.jsp"/>
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" 
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>

</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>

	<div id="header" class="container-fluid header">
		<nav class="navbar navbar-default none_nav">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button> -->
			      <a class="icon navbar-brand" href="#"><img src='<c:url value ="/resources/img/hinhanh/shoes-icon.png" />' style="height: 100px; width: 100px;"></a>
			    </div>
			
			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav navbar-center">
			        <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
			        <li class="active"><a href="#">TRANG CHỦ</a></li>
			        
			        <li><a href="#">DỊCH VỤ</a></li>
			        <li><a href="#">LIÊN HỆ</a></li>
			        
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
				      	<c:choose>
							<c:when test="${chucaidau != null}">
								<li><a href="dangnhap/">${chucaidau}</a></li>
								<li><input id="btndx" class="btn btn-primary" type="submit" value="ĐĂNG XUẤT" /></li> 
							</c:when>
							<c:otherwise>
								<li><a href="dangnhap/">ĐĂNG NHẬP</a></li>
							</c:otherwise>
							
						</c:choose>
			        <li><a href="dangnhap/">ĐĂNG KÝ</a></li>

			        <li><a href="giohang/"><img src='<c:url value ="/resources/img/hinhanh/cart-icon.png"/>' style="height: 70px; width: 70px;"></a></li>
			       
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
		</nav>
		
		
		<div class="event_header container">
			
			<span style="font-size: 50px">NÂNG NIU BÀN CHÂN VIỆT</span> <br>
			
		</div>
	</div>


	
	
	<div id="title-sanpham"class="container">
		<span>SẢN PHẨM</span>
		<div class="row">
			
				<c:forEach var="sanpham" items="${listsanpham}">
					
						<div class="col-md-3 col-sm-6">
						<a href="chitiet/${sanpham.getMasanpham()}">
							<div class = "sanpham">
									<img alt="hinh" src='<c:url value="/resources/img/hinhanh/${sanpham.getHinhsanpham()}"></c:url>'/>
									<span>${sanpham.getTensanpham()}</span><br/>
									<span class="gia">${sanpham.getGiatien()}</span>
							</div>
							</a>
						</div>
						
					</c:forEach>
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
