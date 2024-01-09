package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	public khachhangbean ktdn(String tendangnhapkh, String matkhaukh) throws Exception {
		return khdao.ktdn(tendangnhapkh, matkhaukh);
	}
	public int dki(String hotenkh, String diachikh, String sodienthoaikh, String emailkh, String tendangnhapkh, String matkhaukh) throws Exception {
		return khdao.dki(hotenkh, diachikh, sodienthoaikh, emailkh, tendangnhapkh, matkhaukh);
	}
	public khachhangbean ktdk(String tendangnhapkh) throws Exception {
		return khdao.ktdk(tendangnhapkh);
	}
	public int SuaKH(long makhachhang, String hotenkhmoi, String diachikhmoi, String sodienthoaimoi, String emailkhmoi) throws Exception {
		return khdao.SuaKH(makhachhang, hotenkhmoi, diachikhmoi, sodienthoaimoi, emailkhmoi);
	}
	public int SuaMK(long makhachhang, String matkhaukhmoi) throws Exception {
		return khdao.SuaMK(makhachhang, matkhaukhmoi);
	}
}
