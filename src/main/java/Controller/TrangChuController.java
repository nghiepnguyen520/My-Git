package Controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.SanPhamService;
import entity.SanPham;


@Controller
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	SanPhamService sanphamservice;
	
	@GetMapping
	@Transactional
	public String TrangChu( ModelMap modelmap, HttpSession httpsession)
	{
		if(httpsession.getAttribute("nguoidung") != null) {
			String email  =(String) httpsession.getAttribute("nguoidung");
		/*	String chucaidau = email.substring(0,1);*/
			modelmap.addAttribute("chucaidau", email);
		}
		
		List<SanPham> listsanpham = sanphamservice.LayDanhSachSanPhamLimit(0);
		modelmap.addAttribute("listsanpham", listsanpham);

		return "trangchu";
	}
}
