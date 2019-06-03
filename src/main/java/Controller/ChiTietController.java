package Controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import Service.SanPhamService;
import entity.GioHang;
import entity.SanPham;


@Controller
@RequestMapping("/chitiet")
@SessionAttributes("giohang")
public class ChiTietController {
	
	@Autowired
	SanPhamService sanphamservice;
	
	@GetMapping("/{masanpham}")
	@Transactional
	
	
	
	/*public String ChiTiet(@PathVariable int masanpham,ModelMap modelMap, HttpSession httpSession) {
		SanPham sanpham = sanphamservice.LayDanhSachChiTietSanPhamTheoMa(masanpham);
		
		if (null !=httpSession.getAttribute("giohang"))
		{
			List<GioHang> listGHs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("slGH",listGHs.size());
		}
		
		modelMap.addAttribute("sanpham", sanpham);
		
		return "chitiet";
	}*/
	public String ChiTiet(@PathVariable int masanpham,ModelMap modelMap, HttpSession httpSession) {
		SanPham sanpham = sanphamservice.LayDSCTSPTheoMa(masanpham);
		modelMap.addAttribute("sanpham", sanpham);
		
		if (null != httpSession.getAttribute("giohang"))
		{
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soLuongGioHang",gioHangs.size());
		}
		
		
		
		return "chitiet";
	}

}
