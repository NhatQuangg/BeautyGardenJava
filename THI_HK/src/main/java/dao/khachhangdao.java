package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean ktdn(String tendangnhapkh, String matkhaukh) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from khachhang where tendangnhapkh=? and matkhaukh=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendangnhapkh);
		cmd.setString(2, matkhaukh);
		ResultSet rs = cmd.executeQuery();
		khachhangbean kh = null;
		if(rs.next()) {
			long makhachhang = rs.getLong("makhachhang");
			String hotenkh = rs.getString("hotenkh");
			String diachikh = rs.getString("diachikh");
			String sodienthoaikh = rs.getString("sodienthoaikh");
			String emailkh = rs.getString("emailkh");
			kh = new khachhangbean(makhachhang, hotenkh, diachikh, sodienthoaikh, emailkh, tendangnhapkh, matkhaukh);
		}
		rs.close();
		kn.cn.close();
		return kh;
	}
	public int dki(String hotenkh, String diachikh, String sodienthoaikh, String emailkh, String tendangnhapkh, String matkhaukh) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();		
		String sql = "insert into khachhang (hotenkh, diachikh, sodienthoaikh, emailkh, tendangnhapkh, matkhaukh) values (?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setNString(1,hotenkh);
		cmd.setNString(2,diachikh);
		cmd.setString(3,sodienthoaikh);
		cmd.setString(4, emailkh);
		cmd.setString(5, tendangnhapkh);
		cmd.setString(6, matkhaukh);

		return cmd.executeUpdate();
	}
	public khachhangbean ktdk(String tendangnhapkh) throws Exception{
		// b1: ket noi vao csdl
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql="select * from khachhang where tendangnhapkh=?";
		PreparedStatement cmd=kn.cn.prepareStatement(sql);
		cmd.setString(1, tendangnhapkh);
		ResultSet rs=cmd.executeQuery();
		khachhangbean kh=null;
		if(rs.next()) {
			long makhachhang = rs.getLong("makhachhang");
			String hotenkh = rs.getString("hotenkh");
			String diachikh = rs.getString("diachikh");
			String sodienthoaikh = rs.getString("sodienthoaikh");
			String emailkh = rs.getString("emailkh");
			String matkhaukh = rs.getString("matkhaukh");
			kh = new khachhangbean(makhachhang, hotenkh, diachikh, sodienthoaikh, emailkh, tendangnhapkh, matkhaukh);
		}
		return kh;
	}
	public int SuaKH(long makhachhang, String hotenkhmoi, String diachikhmoi, String sodienthoaimoi, String emailkhmoi) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update khachhang set hotenkh=?, diachikh=?, sodienthoaikh=?, emailkh=? where makhachhang=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setNString(1, hotenkhmoi);
		cmd.setNString(2, diachikhmoi);
		cmd.setString(3, sodienthoaimoi);
		cmd.setString(4, emailkhmoi);
		cmd.setLong(5, makhachhang);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int SuaMK(long makhachhang, String matkhaukhmoi) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update khachhang set matkhaukh=? where makhachhang=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setNString(1, matkhaukhmoi);
		cmd.setLong(2, makhachhang);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
