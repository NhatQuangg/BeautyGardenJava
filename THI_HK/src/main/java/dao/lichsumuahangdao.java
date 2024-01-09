package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.lichsumuahangbean;


public class lichsumuahangdao {
	public ArrayList<lichsumuahangbean> getlichsumuahang(long makhachhang) throws Exception {
		ArrayList<lichsumuahangbean> ds = new ArrayList<lichsumuahangbean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from VLichsumuahang where makhachhang=? order by ngaymua desc";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		ResultSet rs = cmd.executeQuery();
//		lsumuahangbean lsu = null;
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			long soluongmua = rs.getLong("soluongmua");
			boolean damua = rs.getBoolean("damua"); 
			Date ngaymua = rs.getDate("ngaymua");
			long thanhtien = rs.getLong("thanhtien");
			
			ds.add(new lichsumuahangbean(masanpham, tensanpham,anh, gia, soluongmua, damua, ngaymua, makhachhang, thanhtien));
		}
		rs.close();
		kn.cn.close();
		return ds;		
	}
}
