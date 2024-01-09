package bean;

import java.sql.Date;

public class lichsumuahangbean {
	private String masanpham;
	private String tensanpham;
	private String anh;
	private long gia;
	private long soluongmua;
	private boolean damua;
	private Date ngaymua;
	private long makhachhang;
	private long thanhtien;
	public lichsumuahangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsumuahangbean(String masanpham, String tensanpham, String anh, long gia, long soluongmua, boolean damua,
			Date ngaymua, long makhachhang, long thanhtien) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.anh = anh;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.damua = damua;
		this.ngaymua = ngaymua;
		this.makhachhang = makhachhang;
		this.thanhtien = thanhtien;
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
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
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
