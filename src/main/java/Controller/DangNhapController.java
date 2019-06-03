package Controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import Service.KhachHangService;
import entity.KhachHang;

@Controller
@RequestMapping("dangnhap/")
public class DangNhapController {
	
		@GetMapping
		public String DangNhap()
		{
			return "dangnhap";
		}
		
		@Autowired
		KhachHangService khachhangservice;
		
	
		
		/*Dang Ki*/
		
		@PostMapping
		public String DangKy(@RequestParam String hoten,@RequestParam String diachi,@RequestParam String cmnd,@RequestParam String email,@RequestParam String matkhau,@RequestParam String nhaplaimatkhau,ModelMap map)
		{
			boolean ktmail = validate(email);
			if(ktmail) {
				if(matkhau.equals(nhaplaimatkhau)) {
					KhachHang KhachHang = new KhachHang();
					KhachHang.setHoten(hoten);
					KhachHang.setDiachi(diachi);
					KhachHang.setCmnd(cmnd);
					KhachHang.setEmail(email);
					KhachHang.setMatkhau(matkhau);
					
					boolean ktthem = khachhangservice.ThemKhachHang(KhachHang);
					if(ktthem){
						map.addAttribute("tb", "Đăng ký thành công");
					}else {
						map.addAttribute("tb", "Đăng ký thất bại");
					}
				}else {
					map.addAttribute("tb", "Nhập lại mật khẩu");
				}
			}else {
				map.addAttribute("tb", "Vui lòng định dạng đúng email");
			}
			return "dangnhap";
		}

		public static final Pattern VALID_EMAIL_ADDRESS_REGEX =
			Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",Pattern.CASE_INSENSITIVE);
			
		public static boolean validate(String emailStr) {
			Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
			return matcher.find();
			
		}
		
		
}

