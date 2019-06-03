package DAO;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import DAOimp.SanPhamImp;
import DAOimp.SizeSanPhamImp;
import entity.SanPham;
import entity.SizeSanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SizeSanPhamDAO implements SizeSanPhamImp{
  
	@Autowired
	SessionFactory sessionFatory;
	
	
    
	@Transactional
	 public List<SizeSanPham> LayDanhSachSize(){
	Session session = sessionFatory.getCurrentSession();
	String query = "from sizesanpham";
	List<SizeSanPham> listSizeSanPham = session.createQuery(query).getResultList();
	return listSizeSanPham;
	}
	
}
