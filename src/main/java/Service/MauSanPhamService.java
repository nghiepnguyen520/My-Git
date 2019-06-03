package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.MauSanPhamDAO;
import DAOimp.MauSanPhamImp;
import entity.MauSanPham;

@Service
public class MauSanPhamService implements MauSanPhamImp{

	
	
	@Autowired
	MauSanPhamDAO mauSanPhamDAO;
	public List<MauSanPham> LayDanhSachMau() {
		
		return mauSanPhamDAO.LayDanhSachMau();
	}
	  
}
