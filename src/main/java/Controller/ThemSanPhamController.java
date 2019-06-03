package Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import DAOimp.SizeSanPhamImp;
import Service.MauSanPhamService;
import Service.SanPhamService;
import Service.SizeSanPhamService;
import entity.MauSanPham;
import entity.SanPham;
import entity.SizeSanPham;

@Controller
@RequestMapping("/themsanpham")
public class ThemSanPhamController {

	@Autowired
	SanPhamService sanPhamService;
	
	
	@Autowired
	MauSanPhamService mauSanPhamService;
	
	@Autowired 
	SizeSanPhamService sizeSanPhamService;
	
	  @GetMapping
	  public String Defaulf(ModelMap modelMap) {
		List<SanPham>  listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
		List<MauSanPham> listMauSanPham = mauSanPhamService.LayDanhSachMau();
		List<SizeSanPham> listSizeSanPham= sizeSanPhamService.LayDanhSachSize();
		
		modelMap.addAttribute("listSanPham", listSanPhams);
		modelMap.addAttribute("listsize",listSizeSanPham);
		modelMap.addAttribute("listmau",listMauSanPham);
		
		  return "themsanpham";
	  }
}
	