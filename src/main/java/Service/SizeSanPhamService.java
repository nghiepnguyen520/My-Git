package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.SizeSanPhamDAO;
import DAOimp.SizeSanPhamImp;
import entity.SizeSanPham;


@Service
public class SizeSanPhamService implements SizeSanPhamImp {

	@Autowired
	SizeSanPhamDAO SizeSanPhamDAO;

	
	/*@Override*/
	public List<SizeSanPham> LayDanhSachSize() {
		
		return SizeSanPhamDAO.LayDanhSachSize();
	}

}
