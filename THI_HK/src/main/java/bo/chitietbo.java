package bo;

import java.util.ArrayList;

import bean.orderbean;
import dao.chitietdao;

public class chitietbo {
	chitietdao ctdao = new chitietdao();
	public int Them(String masanpham, long soluongmua, long mahoadon) throws Exception {
		return ctdao.Them(masanpham, soluongmua, mahoadon);
	}
	public int CapNhat(long machitiethoadon) throws Exception {
		return ctdao.CapNhat(machitiethoadon);
	}
	public ArrayList<orderbean> gethoadonchuaxacnhan() throws Exception {
		return ctdao.gethoadonchuaxacnhan();
	}
	public int CapNhatSLM(long soluongmua, String masanpham)throws Exception{
		return ctdao.CapNhatSLM(soluongmua, masanpham);
	}
}
