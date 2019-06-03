package Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import Service.KhachHangService;
import Service.SanPhamService;
import entity.ChiTietSanPham;
import entity.GioHang;
import entity.MauSanPham;
import entity.SanPham;
import entity.SizeSanPham;

@Controller
@RequestMapping("api/")
@SessionAttributes({"nguoidung","giohang"})

public class ApiController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping(path="LaySanPhamLimit" , produces="text/plain; charset=utf-8")
	@ResponseBody
	public String LaySanPhamLimit(@RequestParam int spbatdau) {
		
		String html = "";
		
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(spbatdau);
		for (SanPham sanPham : listSanPhams) {
			
			html += "<tr>";
			html += "<td><div class='checkbox'><label><input class='checkboxsanpham' type='checkbox' value='"+sanPham.getMasanpham()+"'></label></div></td>";
			html += "<td class='tensp' data-masp='" + sanPham.getMasanpham() +"'>" +sanPham.getTensanpham() +"</td>";
			html += "<td class='giatien'>" + sanPham.getGiatien() + "</td>";
			html += "<td class='gianhcho'>" + sanPham.getMota() + "</td>";
			html += "<td style='color:white' class='btn btn-warning capnhatsanpham' data-id=" + sanPham.getMasanpham() +">S?a</td>";
			html += "</td>";
		}
		
		return html;
	}
	
	
	
	@Autowired
	KhachHangService khachhangservice;
		
	
	
	@GetMapping("KiemTraDangNhap")
	@ResponseBody
	public String KiemTraDangNhap(@RequestParam String email,@RequestParam String matkhau, ModelMap modelmap) {
		
		boolean kiemtra = khachhangservice.KiemTraDangNhap(email, matkhau);
		modelmap.addAttribute("nguoidung",email);
		
		return ""+kiemtra ;
	}
	@GetMapping("ThemGioHang")
	@ResponseBody
	public void ThemGioHang( @RequestParam String tensp, @RequestParam String giatien,@RequestParam int masp,HttpSession httpSession)
	{
		if (null == httpSession.getAttribute("giohang"))
		{
			List<GioHang> api_list_GioHang = new ArrayList<GioHang>();
			GioHang gioHang = new GioHang();
			gioHang.setMasp(masp);
			gioHang.setTensp(tensp);
			gioHang.setGiatien(giatien);
			
			api_list_GioHang.add(gioHang);
			httpSession.setAttribute("giohang", api_list_GioHang);
			List<GioHang> list = (List<GioHang>) httpSession.getAttribute("giohang");
		}
		else {
			List<GioHang> TonTai_listGioHang = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraTonTaiGioHang(TonTai_listGioHang,httpSession, masp, tensp, giatien);
			if (vitri == -1)
			{
				
				GioHang gioHang = new GioHang();
				gioHang.setMasp(masp);
				gioHang.setTensp(tensp);
				gioHang.setGiatien(giatien);
				
				TonTai_listGioHang.add(gioHang);
			}
			else {
				
				int soluongmoi = TonTai_listGioHang.get(vitri).getMasp() + 1;
				TonTai_listGioHang.get(vitri).setMasp(soluongmoi);
			}
		}
		List<GioHang> TonTai_listGioHang = (List<GioHang>) httpSession.getAttribute("giohang");
		for (GioHang giohang : TonTai_listGioHang)
		{
			System.out.println(giohang.getMasp() + " - " + giohang.getTensp() + " - " + giohang.getGiatien());
		}
		
		
	}
	private int KiemTraTonTaiGioHang(List<GioHang> TonTai_listGioHang,HttpSession httpSession,int masp, String tensp, String giatien) {
			
			for(int i = 0; i < TonTai_listGioHang.size(); i++)
			{
				if (TonTai_listGioHang.get(i).getMasp() == masp && TonTai_listGioHang.get(i).getTensp() == tensp && TonTai_listGioHang.get(i).getGiatien() == giatien )
				{
					return i ;
				}
			}
		
		return -1;
	}
	@GetMapping("LaySoLuongGioHang")
	@ResponseBody
	private String LaySoLuongGioHang(HttpSession httpSession)  {
		if (null != httpSession.getAttribute("giohang"))
		{
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			return gioHangs.size() +"";
		}
		return "";
	}
	@GetMapping("XoaSanPhamGioHang")
	@ResponseBody
	private void XoaSanPhamGioHang(HttpSession httpSession,@RequestParam int masp,@RequestParam String tensp, @RequestParam String giatien){
		if (null !=httpSession.getAttribute("giohang"))
		{
			List<GioHang> TonTai_listGioHang = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraTonTaiGioHang(TonTai_listGioHang, httpSession, masp, tensp, giatien);
			/*System.out.println("vi trí :"+vitri);*/
			/*TonTai_listGioHang.remove(vitri);*/ //lỗi Request processing failed tại dòng này nên k xóa đc session củ
		}
	}
	
	@GetMapping("XoaSanPham")
	@ResponseBody
	public String XoaSanPhamTheoMaSanPham(@RequestParam int masanpham) {
	    sanPhamService.XoaSanPhamTheoMaSanPham(masanpham);
		return "true";
	}
	
	@Autowired
	ServletContext context;
	@PostMapping("UploadFile")
	@ResponseBody
	public String UploadFile(MultipartHttpServletRequest request) {
		
		String path_save_file = context.getRealPath("/resources/img/hinhanh/");
	    Iterator<String> listNames = request.getFileNames();
	    MultipartFile mpf= request.getFile(listNames.next());
	    
	    File file_save = new File(path_save_file + mpf.getOriginalFilename());
	    try {
			mpf.transferTo(file_save);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	   /* System.out.println(path_save_file);*/
		return "true";
	}
	
	@PostMapping("themsanpham")
	@ResponseBody
	public void themsanpham(@RequestParam String dataJson) {
		ObjectMapper objectMapper = new ObjectMapper();
		
		JsonNode jsonObject;
	    try {
	    	SanPham sanPham = new SanPham();
			jsonObject= objectMapper.readTree(dataJson);
			JsonNode jsonChiTiet = jsonObject.get("chitietsanpham");
			Set<ChiTietSanPham> listChiTiet = new HashSet<ChiTietSanPham>();
			
			
			for (JsonNode objectChiTiet : jsonChiTiet) {
				ChiTietSanPham chiTietSanPham = new  ChiTietSanPham();
				MauSanPham mauSanPham = new MauSanPham();
				mauSanPham.setMamau(objectChiTiet.get("mausanpham").asInt());
				
				SizeSanPham sizeSanPham = new SizeSanPham();
				sizeSanPham.setMasize(objectChiTiet.get("sizesanpham").asInt());
				chiTietSanPham.setMausanpham(mauSanPham);
				chiTietSanPham.setSizesanpham(sizeSanPham);
				chiTietSanPham.setSoluong(objectChiTiet.get("soluong").asInt());
				
				listChiTiet.add(chiTietSanPham);
			}
			String tensanpham = jsonObject.get("tensanpham").asText();
			String giatien = jsonObject.get("giatien").asText();
			String mota = jsonObject.get("mota").asText();
			String hinhsanpham = jsonObject.get("hinhsanpham").asText();
			sanPham.setChitietsanpham(listChiTiet);
			sanPham.setTensanpham(tensanpham);
			sanPham.setMota(mota);
			sanPham.setHinhsanpham(hinhsanpham);
			
			sanPhamService.ThemSanPham(sanPham);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

