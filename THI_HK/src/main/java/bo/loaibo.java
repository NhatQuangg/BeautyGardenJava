package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	// ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai() throws Exception {
		ds = ldao.getloai();
		return ds;
	}
	public String Tim(String maloai) throws Exception {
		for(loaibean l: ds) 
			if(l.getMaloai().equals(maloai))
				return l.getTenloai();
		return null;
	}
	public int ThemLoai(String maloai, String tenloai) throws Exception {
		for(loaibean l: ds) 
			if(l.getMaloai().equals(maloai))
				return 0;
		return ldao.ThemLoai(maloai, tenloai);
	}
	public int SuaLoai(String maloai, String tenloaimoi) throws Exception {
		return ldao.SuaLoai(maloai, tenloaimoi);
	}
	public int XoaLoai(String maloai) throws Exception {
		return ldao.XoaLoai(maloai);
	}	
}
