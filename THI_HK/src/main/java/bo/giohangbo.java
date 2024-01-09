package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void ThemHang(String masanpham, String anh, String tensanpham, long gia, long soluongmua) {
		for(giohangbean h: ds) {
			if(h.getMasanpham().equals(masanpham)) {
				h.setSoluongmua(h.getSoluongmua()+soluongmua);
				return;
			}
		}
		giohangbean h = new giohangbean(masanpham, anh, tensanpham, gia, soluongmua);
		ds.add(h);
	}
	public void XoaHang(String masanpham) {
		for(giohangbean h: ds) {
			if(h.getMasanpham().equals(masanpham)) {
				ds.remove(h);
				return;
			}
		}
	}
	
	// sua so luong
	public void SuaHang(String masanpham, long soluongmoi) {
		int n = ds.size();
		for(int i=0; i<n; i++) {
			giohangbean h = ds.get(i);	// lay sach thu i
			if(h.getMasanpham().equals(masanpham)) {
				h.setSoluongmua(soluongmoi);	// sua so luong
				ds.set(i, h);	// luu lai vao ds
				return;
			}
		}
	}
	
	// tinh tong tien
	public long TongTien() {
		long s = 0;
		for(giohangbean h: ds) {
			s = s + h.getThanhtien();
		}
		return s;
	}
	// Hiển thị giá có dấu "."
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
