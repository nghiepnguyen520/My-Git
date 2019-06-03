$(document).ready(function(){
	
	
	
	$("#btnDangNhap").click(function(){
		var email = $("#email").val();
		var matkhau = $("#matkhau").val();
		$.ajax({
			url:"/demospring/api/KiemTraDangNhap",
			type:"GET",
			data:{
				email: email,
				matkhau: matkhau
			},
			success: function(value){
				if(value == "true"){
					tranghientai = window.location.href;
					trangchu = tranghientai.replace("dangnhap/","");
					window.location = trangchu;
				}else{
					alert("Vui lòng kiểm tra email hoặc mật khẩu !");
				}
			}
		});
		
	});
	
	
	
	$(".btn-giohang").click(function(){
		var masp = $(this).closest("tr").find(".masp").attr("data-masp");
		var tensp = $(this).closest("tr").find(".tensp").text();
		var giatien = $(this).closest("tr").find(".giatien").text();
		
		alert("Da them gio hang: "+" " + tensp +" "+ "Gia:"+" " + giatien);
			$.ajax({
				url:"/demospring/api/ThemGioHang",
				type:"GET",
				data:{
					masp:masp,
					tensp: tensp,
					giatien: giatien
				},
				success: function(value) {
					
				}
			}).done(function (){
				$.ajax({
					url:"/demospring/api/LaySoLuongGioHang",
					type:"GET",
					success: function(value) {
						$(".soluonggiohang").html("<span>" + value + "</span>");
					}
				})
			});
		
	});
	TongTienGioHang();
	function TongTienGioHang(isEventChange){
		var tongtiensp = 0;
		$(".giatien").each(function (){
			var giatien = $(this).closest("tr").find(".giatien").attr("data-giagoc");
			var formatgiatien = parseInt(giatien);
			tongtiensp = tongtiensp + formatgiatien;
			$("#tongtien").html(tongtiensp + ".000" + " " + "VNĐ");
		})
	}
	/*var tongtiensp = 0;
	$(".giatien").each(function (){
		var giatien = $(this).closest("tr").find(".giatien").attr("data-giagoc");
		var formatgiatien = parseInt(giatien);
		tongtiensp = tongtiensp + formatgiatien;
		$("#tongtien").html(tongtiensp + ".000" + " " + "VNĐ");
	})*/
	
	
	$(".xoa-btn").click(function(){
		var temp = $(this);
		var masp = $(this).closest("tr").find(".masp").attr("data-masp");
		var tensp = $(this).closest("tr").find(".tensp").text();
		var giatien = $(this).closest("tr").find(".giatien").text();
		
		$.ajax({
			url:"/demospring/api/XoaSanPhamGioHang",
			type:"GET",
			data: {
				masp:masp,
				tensp: tensp,
				giatien: giatien,
			},
			success: function(value) {
				temp.closest("tr").remove();
				TongTienGioHang(true);
			}
		})
		
	})
	
	
	$("#checkall").change(function(){
		if($(this).checked){
		
			$("#table-sanpham input").each(function(){
				$(this).attr("checked","checked");
			})
		}else{
			
		}
	})
	
	
	$("#xoa-sanphamad").click(function(){
		$("#table-sanpham >tbody input:checked").each(function(){
				
			var masanpham = $(this).val();
		    var This = $(this);
			This.closest("tr").remove();
			$.ajax({
				url:"/demospring/api/XoaSanPham",
				type:"GET",
				data:{
					masanpham:masanpham,
					
				},
				success:function(value){
					
					This.closest("tr").remove();
				}
			})
			
			
		})
	});
	
	var files=[];
	/*var tenhinh="";*/
	$("#hinhsanpham").change(function(event){
		files = event.target.files;
		tenhinh=files[0];
		forms= new FormData();
		forms.append("file",files[0]);
		
		$.ajax({
				url:"/demospring/api/UploadFile",
				type:"POST",
				data:forms,
				contentType:false,
				processData:false,
				enctype:"multipart/form-data",
				success:function(value){
										
				}
			})
		
	});
	
	$("body").on("click",".btn-chitiet",function(){
		$(this).remove();
		var chitietclone = $("#chitietsanpham").clone().removeAttr("id");
		$("#containerchitietsanpham").append(chitietclone);
	});
	
	$("#btnThemSanPham").click(function(event){
		event.preventDefault();
		var formdata = $("#form-sanpham").serializeArray();
		
		json={};
		arraychitiet=[];
			$.each(formdata,function(i,field){
				 json[field.name] = field.value;
		});
						
			$("#containerchitietsanpham >.chitietsanpham").each(function(){
				objectChitiet={};			
				mausanpham=$(this).find('select[name="mausanpham"]').val();
				sizesanpham=$(this).find('select[name="sizesanpham"]').val();
				soluong=$(this).find('input[name="soluong"]').val();
				objectChitiet["mausanpham"]=mausanpham;
				objectChitiet["sizesanpham"]=sizesanpham;
				objectChitiet["soluong"]=soluong;
				
				arraychitiet.push(objectChitiet);
			})
			json["chitietsanpham"]=arraychitiet;
			json["hinhsanpham"]=tenhinh;
			console.log(json);
		
				$.ajax({
						url:"/demospring/api/themsanpham",
						type:"POST",
						data:{
							dataJson:JSON.stringify(json)
						},
						success:function(value){
															
						}
				})
	})
})


