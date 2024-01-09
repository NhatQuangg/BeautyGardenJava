package bo;

import java.sql.Date;
import java.util.ArrayList;

import bean.loaibean;
import bean.sanphambean;
import dao.sanphamdao;

public class sanphambo {
	sanphamdao spdao = new sanphamdao();
	ArrayList<sanphambean> ds;
	
	public ArrayList<sanphambean> getsanpham() throws Exception {
		ds = spdao.getsanpham();
		return ds;
	}
	// tra ve all san pham cua loai co ma: maloai
	public ArrayList<sanphambean> TimMa(String maloai) throws Exception {
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean sp: ds) {
			if(sp.getMaloai().equals(maloai)) {
				tam.add(sp);
			}
		}
		return tam;
	}
	// tra ve all san pham co tensanpham va thongtin giong nhu key
	public ArrayList<sanphambean> Tim(String key) throws Exception {
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean sp: ds) {
			if(sp.getTensanpham().toLowerCase().contains(key.toLowerCase()) || sp.getTomtat().toLowerCase().contains(key.toLowerCase()))
				tam.add(sp);
		}
		return tam;
	}
	// tra ve all san pham co ma: masanpham
	public ArrayList<sanphambean> TimMSP(String masanpham) throws Exception {
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean sp: ds) {
			if(sp.getMasanpham().equals(masanpham)) {
				tam.add(sp);
			}
		}
		return tam;
	}
	public String SearchMSP(String masanpham) throws Exception {
		for(sanphambean sp: ds) 
			if(sp.getMasanpham().equals(masanpham))
				return sp.getMasanpham();
		return null;
	}
	public String SearchML(String maloai) throws Exception {
		for(sanphambean sp: ds) 
			if(sp.getMaloai().equals(maloai))
				return sp.getMaloai();
		return null;
	}
	public int ThemSanpham(String masanpham, String tensanpham, long soluong, long gia, String anh, Date ngaynhap, String tomtat, String thongtinsanpham, String maloai) throws Exception {
		for(sanphambean sp: ds) 
			if(sp.getMasanpham().equals(masanpham))
				return 0;
		return spdao.ThemSanpham(masanpham, tensanpham, soluong, gia, anh, ngaynhap, tomtat, thongtinsanpham, maloai);		
	}
	public int SuaSanpham(String masanpham, String tensanphammoi, long soluongmoi, long giamoi, String anhmoi, Date ngaynhapmoi,
			String tomtatmoi, String thongtinsanphammoi, String maloaimoi) throws Exception {
		return spdao.SuaSanpham(masanpham, tensanphammoi, soluongmoi, giamoi, anhmoi, ngaynhapmoi, tomtatmoi, thongtinsanphammoi, maloaimoi);
	}
	public int XoaSanpham(String masanpham) throws Exception {
		return spdao.XoaSanpham(masanpham);
	}

}
