package bean;

import java.sql.Date;

public class sanphambean {
	private String masanpham;
	private String tensanpham;
	private long soluong;
	private long gia;
	private String anh;
	private Date ngaynhap;
	private String tomtat;
	private String thongtinsanpham;
	private String maloai;
	public sanphambean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sanphambean(String masanpham, String tensanpham, long soluong, long gia, String anh, Date ngaynhap,
			String tomtat, String thongtinsanpham, String maloai) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.ngaynhap = ngaynhap;
		this.tomtat = tomtat;
		this.thongtinsanpham = thongtinsanpham;
		this.maloai = maloai;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public String getTomtat() {
		return tomtat;
	}
	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}
	public String getThongtinsanpham() {
		return thongtinsanpham;
	}
	public void setThongtinsanpham(String thongtinsanpham) {
		this.thongtinsanpham = thongtinsanpham;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getGiaString(long gia) {
		String SGia = "" + gia;
		String NewGia ="";
		int k=0;
		for(int i= SGia.length()-1; i>=0; i--) {
			if(k<3) {
				NewGia = SGia.charAt(i) + NewGia;
				k++;
			}else{
				NewGia = SGia.charAt(i) + "." + NewGia;
				k=1;
			}
		}	
		return NewGia;
	}
}
