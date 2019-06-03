package Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Service.HoaDonService;
import entity.GioHang;
import entity.HoanDon;
import entity.SanPham;

@Controller
@RequestMapping("giohang/")
public class GioHangController {
	
	@Autowired
	HoaDonService hoadonservice;
	
	
	@GetMapping
	public String DemoGioHang(HttpSession httpSession,ModelMap modelMap) {
		
		if (null != httpSession.getAttribute("giohang"))
		{
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soLuongGioHang",gioHangs.size());
			modelMap.addAttribute("giohang", gioHangs);
		}
		return "giohang";
	}
	@PostMapping
	public String ThemHoaDon(HttpSession httpSession, @RequestParam String tenkhachhang, @RequestParam String sodt, @RequestParam String hinhthucgiaohang,@RequestParam String diachigiaohang)
	{
		
		
		if (null != httpSession.getAttribute("giohang"))
		{
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			for (GioHang giohang : gioHangs)
			{
				HoanDon hd = new HoanDon();
				hd.setTenkhachhang(tenkhachhang);
				hd.setSodt(sodt);
				hd.setHinhthucgiaohang(hinhthucgiaohang);
				hd.setDiachigiaohang(diachigiaohang);
				hd.setTensanpham(giohang.getTensp());
				hd.setGiatien(giohang.getGiatien());
				hoadonservice.ThemHoaDon(hd);
			}
			
			
			
			
		
			
			
			/*if (idhoaDon > 0)
			{
				List<HoanDon> listHD = new ArrayList<HoanDon>();
				for (GioHang giohang : gioHangs)
				{
					HoanDon duyetHD = new HoanDon();
					duyetHD.setTensanpham(giohang.getTensp());
					duyetHD.setGiatien(giohang.getGiatien()); //lỗi không lấy đc giá tiền
					listHD.add(duyetHD);
					
				}
				
			}*/
		}
			else {
				System.out.println("Thêm thất bại");
			}
			
			
	
		
		
		return "giohang";
	}
}
