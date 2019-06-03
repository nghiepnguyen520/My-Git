package DAOimp;

import java.util.List;


import entity.SanPham;

public interface SanPhamImp {
	List<SanPham> LayDanhSachSanPhamLimit(int sobatdau);
	/*SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham);*/
	SanPham LayDSCTSPTheoMa(int maSP);
	boolean XoaSanPhamTheoMaSanPham(int masanpham);
	boolean ThemSanPham(SanPham sanPham);
}
