package DAOimp;

import entity.KhachHang;

public interface KhachHangImp {
	boolean KiemTraDangNhap(String email,String matkhau);
	boolean ThemKhachHang(KhachHang Khachhang);

}
