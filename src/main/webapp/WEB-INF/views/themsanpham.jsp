<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE HTML>
<html>
<head>
<title>Thêm sản phẩm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>' />
<!-- Custom CSS -->
<link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>' />
<link rel="stylesheet" href='<c:url value="/resources/css/morris.css"/>' />
<!-- Graph CSS -->
<link rel="stylesheet" href='<c:url value="/resources/css/font-awesome.css"/>' />
<!-- jQuery -->
<script src='<c:url value="/resources/JS/jquery-3.3.1.min.js"/>'></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href='<c:url value="/resources/css/icon-font.min.css"/>' />
<!-- //lined-icons -->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	  <div class="row">
	  <h3>Sản Phẩm</h3>
	  
	  <form id="form-sanpham"action="">
	   <div class="col-md-4 col-sm-12  form-group" >
			   <label for="tensanpham">Tên sản phẩm:</label></br>
			   <input type="text" id="tensanpham" name="tensanpham" class="form-control" placeholder="Nhập tên sản phẩm"/></br>
			   
			    <label for="giatien">Giá tiền:</label></br>
			   <input type="text" id="giatien" name="giatien" class="form-control" placeholder="Nhập giá tiền"/></br>
			   
			    <label for="mota">Mô tả:</label></br>
			   <textarea  rows="6"  type="text" id="mota" name="mota" class="form-control" placeholder="Nhập mô tả"></textarea></br>
			   
			   <label for="hinhsanpham">Hình ảnh:</label></br>
			   <input type="file" id="hinhsanpham" name="hinhsanpham" class="form-control" placeholder="Chọn ảnh"/></br>
	
			 <div id="containerchitietsanpham">
			    <div id="chitietsanpham" class="chitietsanpham">
					   <span> Chi tiết </labspanel></span></br>
					   			 <select name="mausanpham" class="form-control" id="mausanpham">
								<c:forEach var ="valuemau" items="${listmau}" >
									<option value="${valuemau.getMamau() }"> ${valuemau.getTenmau()}</option>
								</c:forEach>
								
						</select></br>
						
						<select name="sizesanpham" class="form-control" id="sizesanpham">
							<c:forEach var ="valuesizesanpham" items="${listsize}" >
								<option value="${valuesizesanpham.getMasize() }"> ${valuesizesanpham.getTensize()}</option>
							</c:forEach>
							
						</select></br>
						
							<input min="1" value="1" type="number" name="soluong" id="soluong" class="form-control" placeholder="Soluong" /></br>
					 <button class="btn btn-primary btn-chitiet"  style="display: block; margin-right: 0px; margin-left: auto;">Thêm chi tiết</button>
			   </div> 
			 </div>  	
			<%-- <div id="chitietsanpham" class="chitietsanpham">
			   <span> Chi tiết </labspanel></span></br>
			   			 <select name="mausanpham" class="form-control" id="mausanpham">
						<c:forEach var ="valuemau" items="${listmau}" >
							<option value="${valuemau.getMamau() }"> ${valuemau.getTenmau()}</option>
						</c:forEach>
						
				</select></br>
				
				<select name="sizesanpham" class="form-control" id="sizesanpham">
					<c:forEach var ="valuesizesanpham" items="${ listsize}" >
						<option value="${valuesizesanpham.getMasize() }"> ${valuesizesanpham.getTensize()}</option>
					</c:forEach>
					
				</select></br>
				
					<input min="1" value="1" type="number" name="soluong" id="soluong" class="form-control" placeholder="Soluong" /></br>
					 <button class="btn btn-primary btn-chitiet"  style="display: block; margin-right: 0px; margin-left: auto;">Thêm chi tiết</button>
			   </div> --%>
			  
			   <button id="btnThemSanPham" class="btn btn-primary">Thêm sản phẩm</button> 
			   </form>
	   </div>
	   <div class="col-md-8 col-sm-12">
			   
			  <div style="float:right">
			 		
			 		<button id="xoa-sanphamad" class="btn btn-info">Xóa</button> 
			  </div>
			  
							  <table id="table-sanpham" class="table">
							   <thead>
							     <tr>
							     	 <td>
							     	 	<div id="checkall" class="checkbox">
										  
										</div>
							     	 </td>
							     	 <td>Tên sản phẩm</td>
							     	 <td>Giá tiền</td>
							     	 <td>Mô tả</td>
							     </tr>
							   </thead>	
							    
							   <tbody>
							   	 <c:forEach var="value" items="${listSanPham}">
											<tr>
												<th>
																<div class="checkbox">
														  <label><input class="checkboxsanpham" type="checkbox" value="${value.getMasanpham()}"></label>
												</th>
												<th class="masp" data-masp="${value.getMasanpham()}">${value.getTensanpham()}</th>
												<th class="giatien" data-giagoc="${value.getGiatien()}">${value.getGiatien()}</th>
												<th class="mota" data-mota="${value.getMota()}">${value.getMota()}</th>
												<!-- <td><button class="xoa-btn btn btn-danger">Xóa</button></td> -->
											</tr>
										</c:forEach>
							   </tbody>
							</table>			
			  		 </div>  	
	  </div>
</div>
  <!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<!-- <li><a href="index.html"><i class="fa fa-tachometer"></i> <span>Dashboard</span><div class="clearfix"></div></a></li> -->
										
										
										 <li id="menu-academico" ><a href='<c:url value="/themsanpham"/>'"><i class="fa fa-book nav_icon"></i><span>Thêm sản phẩm</span><div class="clearfix"></div></a></li>
									<!-- <li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li>
									<li id="menu-academico" ><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span><div class="clearfix"></div></a></li>
									 <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span> Short Codes</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="icons.html">Icons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="typography.html">Typography</a></li>
											<li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
										  </ul>
										</li>
									<li id="menu-academico" ><a href="errorpage.html"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span>Error Page</span><div class="clearfix"></div></a></li>
									  <li id="menu-academico" ><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i><span> UI Components</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="button.html">Buttons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="grid.html">Grids</a></li>
										  </ul>
										</li>
									 <li><a href="tabels.html"><i class="fa fa-table"></i>  <span>Tables</span><div class="clearfix"></div></a></li>
									<li><a href="maps.html"><i class="fa fa-map-marker" aria-hidden="true"></i>  <span>Maps</span><div class="clearfix"></div></a></li>
							        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										 <ul id="menu-academico-sub" >
											<li id="menu-academico-boletim" ><a href="calendar.html">Calendar</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signin.html">Sign In</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
											

										  </ul>
									 </li>
									<li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>Forms</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
									  <ul>
										<li><a href="input.html"> Input</a></li>
										<li><a href="validation.html">Validation</a></li>
									</ul>
									</li> -->
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src='<c:url value="/resources/JS/jquery.nicescroll.js"/>'></script>
<script src='<c:url value="/resources/JS/scripts.js"/>'></script>
<!-- Bootstrap Core JavaScript -->
<script src='<c:url value="/resources/JS/bootstrap.js"/>'></script>
   <!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src='<c:url value="/resources/JS/raphael-min.js"/>'></script>
<script src='<c:url value="/resources/JS/morris.js"/>'></script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
				{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
			],
			lineColors:['#ff4a43','#a2d200','#22beef'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
	<jsp:include page="footer.jsp"/>
</body>
</html>