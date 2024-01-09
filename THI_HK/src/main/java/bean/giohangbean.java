package bean;

public class giohangbean {
	private String masanpham;
	private String anh;
	private String tensanpham;
	private long gia;
	private long soluongmua;
	private long thanhtien;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String masanpham, String anh, String tensanpham, long gia, long soluongmua) {
		super();
		this.masanpham = masanpham;
		this.anh = anh;
		this.tensanpham = tensanpham;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = soluongmua*gia;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
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
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getThanhtien() {
		return soluongmua*gia;
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
