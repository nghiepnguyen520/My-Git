package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.SanPhamDAO;
import DAOimp.SanPhamImp;
import entity.SanPham;

@Service
public class SanPhamService implements SanPhamImp {
	
	@Autowired
	SanPhamDAO sanphamdao;

	public List<SanPham> LayDanhSachSanPhamLimit(int sobatdau) {
		return sanphamdao.LayDanhSachSanPhamLimit(sobatdau);
	}

	public SanPham LayDSCTSPTheoMa(int maSP) {
		return sanphamdao.LayDSCTSPTheoMa(maSP);
	}

	public boolean XoaSanPhamTheoMaSanPham(int masanpham) {
		return sanphamdao.XoaSanPhamTheoMaSanPham(masanpham);
	}

	public boolean ThemSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		return sanphamdao.ThemSanPham(sanPham);
	}
	

	/*public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		return sanphamdao.LayDanhSachChiTietSanPhamTheoMa(masanpham);
	}
	*/
}
