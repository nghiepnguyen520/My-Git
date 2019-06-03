package DAO;


import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import DAOimp.SanPhamImp;
import entity.ChiTietSanPham;
import entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp {
	
	@Autowired
	SessionFactory sessionFatory;
	
	@Transactional
	public  List<SanPham> LayDanhSachSanPhamLimit(int sobatdau) {
		Session session = sessionFatory.getCurrentSession();
		List<SanPham> listsanpham = new ArrayList<SanPham>();
		if(sobatdau < 0) {
			String query = "FROM sanpham";
			 listsanpham  =  (List<SanPham>) session.createQuery(query).getSingleResult();
		}
		else {
			 listsanpham = (List<SanPham>) session.createQuery("FROM sanpham").setFirstResult(sobatdau).setMaxResults(16).getResultList();
		}
		
		return listsanpham;
	}

	/*@Transactional
	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		Session session = sessionFatory.getCurrentSession();
		String query = "FROM sanpham WHERE masanpham = "+masanpham;
		SanPham sanpham =  (SanPham) session.createQuery(query).getSingleResult();
		
		
		return sanpham;
	}*/
	
		@Transactional
		public  SanPham LayDSCTSPTheoMa(int maSP)
		{
			Session session = sessionFatory.getCurrentSession();
			SanPham sanpham = (SanPham) session.createQuery("FROM sanpham WHERE masanpham="+maSP ).getSingleResult();
			return sanpham;
		}
		
		@Transactional
		public boolean XoaSanPhamTheoMaSanPham(int masanpham) {
			Session session = sessionFatory.getCurrentSession();
			SanPham sanpham = session.get(SanPham.class, masanpham);
			Set<ChiTietSanPham> chitietsanphams = sanpham.getChitietsanpham();
			for (ChiTietSanPham chitietsanpham : chitietsanphams) {
				session.createQuery("DELETE chitiethoadon WHERE machitietsanpham ="+chitietsanpham.getMachitietsanpham()).executeUpdate();
			}
			session.createQuery("DELETE chitietsanpham WHERE masanpham="+masanpham).executeUpdate();
			session.createQuery("DELETE sanpham WHERE masanpham="+masanpham).executeUpdate();
			return false;
		}
		@Transactional
		public boolean ThemSanPham(SanPham sanPham) {
			Session session = sessionFatory.getCurrentSession();
			 int id = (Integer) session.save(sanPham);
			return false;
		}
	
}
