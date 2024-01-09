package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.orderbean;

public class chitietdao {
	public int Them(String masanpham, long soluongmua, long mahoadon) throws Exception {
		// b1: ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		// b2: tao cau lenh sql
		String sql = "insert into chitiethoadon (masanpham, soluongmua, mahoadon, damua) values (?,?,?,?)";
		// b3: tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// truyen 3 tham so vao cau lenh sql
		cmd.setString(1, masanpham);
		cmd.setLong(2, soluongmua);
		cmd.setLong(3, mahoadon);
		cmd.setBoolean(4, false);
		int kq = cmd.executeUpdate();
		// b6: dong rs va ket noi
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int CapNhat(long machitiethoadon) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update chitiethoadon set damua=1 where machitiethoadon=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, machitiethoadon);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public ArrayList<orderbean> gethoadonchuaxacnhan() throws Exception {
		ArrayList<orderbean> ds = new ArrayList<orderbean>();
		
		// b1: ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		// b2: tao cau lenh sql
		String sql = "select * from VXacNhan";
		// b3: tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4: thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		// b5: Duyet rs de luu vao ds
		while(rs.next()) {
			long makhachhang = rs.getLong("makhachhang");
			String hotenkh = rs.getString("hotenkh"); 
			String tensanpham = rs.getString("tensanpham");
			long gia = rs.getLong("gia");
			Date ngaymua = rs.getDate("ngaymua");
			long soluongmua = rs.getLong("soluongmua");
			boolean damua = rs.getBoolean("damua");
			long thanhtien = rs.getLong("thanhtien");
			long machitiethoadon = rs.getLong("machitiethoadon");
			ds.add(new orderbean(makhachhang, hotenkh, tensanpham, gia, ngaymua, soluongmua, damua, thanhtien, machitiethoadon));
		}
		// b6: dong rs va ket noi
		rs.close();
		kn.cn.close();
		return ds;
	}
	public int CapNhatSLM(long soluongmua, String masanpham)throws Exception{
		ketnoidao kn= new ketnoidao();
		kn.ketnoi();
		//B2:Tao cau lenh sql
		String sql= "UPDATE sanpham SET soluong = soluong - ? FROM sanpham JOIN chitiethoadon ON sanpham.masanpham = chitiethoadon.masanpham where sanpham.masanpham=? ";
		//b3: tao cau lenh
		PreparedStatement cmd= kn.cn.prepareStatement(sql);
		//b4 thuc hien cau lenh
		cmd.setLong(1, soluongmua );
		cmd.setString(2,masanpham);
		int kq=cmd.executeUpdate();//thuc hien cau lenh sql
		//b6 dong rs va ket noi
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
