package bean;

import java.util.Date;

public class orderbean {
	private long makhachhang;
	private String hotenkh;
	private String tensanpham;
	private long gia;
	private Date ngaymua;
	private long soluongmua;
	private boolean damua;
	private long thanhtien;
	private long machitiethoadon;
	public orderbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public orderbean(long makhachhang, String hotenkh, String tensanpham, long gia, Date ngaymua, long soluongmua,
			boolean damua, long thanhtien, long machitiethoadon) {
		super();
		this.makhachhang = makhachhang;
		this.hotenkh = hotenkh;
		this.tensanpham = tensanpham;
		this.gia = gia;
		this.ngaymua = ngaymua;
		this.soluongmua = soluongmua;
		this.damua = damua;
		this.thanhtien = thanhtien;
		this.machitiethoadon = machitiethoadon;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public String getHotenkh() {
		return hotenkh;
	}
	public void setHotenkh(String hotenkh) {
		this.hotenkh = hotenkh;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
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
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public long getMachitiethoadon() {
		return machitiethoadon;
	}
	public void setMachitiethoadon(long machitiethoadon) {
		this.machitiethoadon = machitiethoadon;
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
