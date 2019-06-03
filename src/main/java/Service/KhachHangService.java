package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.KhachHangDAO;
import DAOimp.KhachHangImp;
import entity.KhachHang;

@Service
public class KhachHangService implements KhachHangImp {
	@Autowired
	KhachHangDAO khachhangdao;

	public boolean ThemKhachHang(KhachHang Khachhang) {
		boolean ktThem = khachhangdao.ThemKhachHang(Khachhang);
		return true;
	}

	public boolean KiemTraDangNhap(String email, String matkhau) {
		boolean kiemtra = khachhangdao.KiemTraDangNhap(email, matkhau);
		return kiemtra;
	}

}
