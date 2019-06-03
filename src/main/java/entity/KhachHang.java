package entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="khachhang")
public class KhachHang {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int makhachhang;
	String hoten;
	String diachi;
	String cmnd;
	
	/*@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="machucvu")
	ChucVu chucvu;*/
	
	String email;
	String matkhau;
	
	public int getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(int makhachhang) {
		this.makhachhang = makhachhang;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getCmnd() {
		return cmnd;
	}
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	/*public ChucVu getChucvu() {
		return chucvu;
	}
	public void setChucvu(ChucVu chucvu) {
		this.chucvu = chucvu;
	}*/
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

}
