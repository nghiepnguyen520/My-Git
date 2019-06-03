package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DAO.HoaDonDAO;
import DAOimp.HoaDonImp;
import entity.HoanDon;

@Service
public class HoaDonService implements HoaDonImp{
	@Autowired
	HoaDonDAO hoadondao;

	public int ThemHoaDon(HoanDon hoadon) {
		return hoadondao.ThemHoaDon(hoadon);
		
	}
	
}
