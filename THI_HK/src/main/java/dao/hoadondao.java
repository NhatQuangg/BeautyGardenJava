package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hoadondao {
	public int Them(long makhachhang) throws Exception {
		// b1: ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		// b2: tao cau lenh sql
		String sql = "insert into hoadon (makhachhang, ngaymua, damua) values (?,?,?)";
		// b3: tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// truyen 3 tham so vao cau lenh sql
		cmd.setLong(1, makhachhang);
		// lay ngay gio hien tai
		// Luu y: lay date cua java.util chu ko phai java.sql
		Date n1 = new Date();
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		// doi ngay util sang chuoi theo dinh dang
		String tam = dd.format(n1);	// "2023-07-27"
		Date n2 = dd.parse(tam); // doi chuoi ra ngay util
		// doi ngay util sang ngay sql va dua vao tham so
		cmd.setDate(2, new java.sql.Date(n2.getTime()));
		cmd.setBoolean(3, false);
		int kq = cmd.executeUpdate();	// thuc hien cau lenh sql
		// b6: dong rs va ket noi
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public long getMaxHD() throws Exception {
		// b1: ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		// b2: tao cau lenh sql
		String sql = "select Max(mahoadon) as MaxHD from hoadon";
		// b3: tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4: thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		long max = 0;
		if(rs.next()) {
			// lay ve gia tri cua cot dau tien trong rs
			max = rs.getLong(1); 	
		}
		rs.close();
		kn.cn.close();
		return max;		
	}
}
