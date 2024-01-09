package bo;

import java.util.ArrayList;

import bean.lichsumuahangbean;
import dao.lichsumuahangdao;

public class lichsumuahangbo {
	lichsumuahangdao lsdao = new lichsumuahangdao();
	public ArrayList<lichsumuahangbean> getlichsumuahang(long makhachhang) throws Exception {
		return lsdao.getlichsumuahang(makhachhang);
	}
}
