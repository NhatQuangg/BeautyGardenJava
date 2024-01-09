package bo;

import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao = new hoadondao();
	public int Them(long makhachhang) throws Exception {
		return hddao.Them(makhachhang);
	}
	public long getMaxHD() throws Exception {
		return hddao.getMaxHD();
	}
}
