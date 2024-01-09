package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import bean.sanphambean;

public class sanphamdao {
	public ArrayList<sanphambean> getsanpham() throws Exception {
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from sanpham";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham");
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			Date ngaynhap = rs.getDate("ngaynhap");
			String tomtat = rs.getString("tomtat");
			String thongtinsanpham = rs.getString("thongtinsanpham");
			String maloai = rs.getString("maloai");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, gia, anh, ngaynhap, tomtat, thongtinsanpham, maloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	public int ThemSanpham(String masanpham, String tensanpham, long soluong, long gia, String anh, Date ngaynhap,
			String tomtat, String thongtinsanpham, String maloai) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "insert into sanpham(masanpham, tensanpham, soluong, gia, anh, ngaynhap, tomtat, thongtinsanpham, maloai) values (?,?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masanpham);
		cmd.setNString(2, tensanpham);
		cmd.setLong(3, soluong);
		cmd.setLong(4, gia);
		cmd.setNString(5, anh);
		cmd.setDate(6, ngaynhap);
		cmd.setNString(7, tomtat);
		cmd.setNString(8, thongtinsanpham);
		cmd.setString(9, maloai);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}
	public int SuaSanpham(String masanpham, String tensanphammoi, long soluongmoi, long giamoi, String anhmoi, Date ngaynhapmoi,
			String tomtatmoi, String thongtinsanphammoi, String maloaimoi) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update sanpham set tensanpham=?, soluong=?, gia=?, anh=?, ngaynhap=?, tomtat=?, thongtinsanpham=?, maloai=? where masanpham=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setNString(1, tensanphammoi);
		cmd.setLong(2, soluongmoi);
		cmd.setLong(3, giamoi);
		cmd.setString(4, anhmoi);
		cmd.setDate(5, ngaynhapmoi);
		cmd.setNString(6, tomtatmoi);
		cmd.setNString(7, thongtinsanphammoi);
		cmd.setNString(8, maloaimoi);
		cmd.setNString(9, masanpham);
		int kq = cmd.executeUpdate();	
		cmd.close();
		kn.cn.close();
		return kq;			
	}
	public int XoaSanpham(String masanpham) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "delete from sanpham where masanpham=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masanpham);
		int kq = cmd.executeUpdate();	
		cmd.close();
		kn.cn.close();
		return kq;		
	}
}
