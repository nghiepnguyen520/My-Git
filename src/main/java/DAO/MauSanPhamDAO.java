package DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import DAOimp.MauSanPhamImp;
import entity.MauSanPham;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MauSanPhamDAO implements MauSanPhamImp{
	@Autowired
	SessionFactory sessionFatory;

	
	
	@Transactional
	public List<MauSanPham> LayDanhSachMau() {
		Session session = sessionFatory.getCurrentSession();
		String query = "FROM mausanpham";
	    List<MauSanPham>	listMauSanPham =  session.createQuery(query).getResultList();
		return listMauSanPham;
	}
}
