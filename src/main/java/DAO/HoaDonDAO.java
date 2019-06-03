package DAO;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import DAOimp.HoaDonImp;
import entity.HoanDon;

@Repository
@Scope(proxyMode= ScopedProxyMode.TARGET_CLASS)
public class HoaDonDAO implements HoaDonImp {
	
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public int ThemHoaDon(HoanDon hoadon) {
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer) session.save(hoadon);
		if (0 < id )
		{
			return id;
		}
		else {
			return 0;
		}
	}

	
	
	
}
