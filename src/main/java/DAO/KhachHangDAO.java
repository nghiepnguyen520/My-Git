package DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import DAOimp.KhachHangImp;
import entity.KhachHang;

@Repository
@Scope(proxyMode= ScopedProxyMode.TARGET_CLASS)
public class KhachHangDAO implements KhachHangImp {

	@Autowired
	SessionFactory sessionFactory;
	

	@Transactional
	public boolean ThemKhachHang(KhachHang Khachhang) {
		Session session = sessionFactory.getCurrentSession();
		int manhavien = (Integer) session.save(Khachhang);
		System.out.println(manhavien + "-");
		return false;
	}

	
	@Transactional
	public boolean KiemTraDangNhap(String email, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		try {
			KhachHang KhachHang = (KhachHang) session.createQuery("FROM khachhang WHERE email ='"+email+"'AND matkhau ='"+matkhau+"' ").getSingleResult();
			if(KhachHang != null) {
				return true;
			}
		} catch (Exception e) {
		
			return false;
		}
		return false;
	}

}
