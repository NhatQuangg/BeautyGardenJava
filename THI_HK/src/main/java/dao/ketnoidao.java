package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ketnoidao {
	public Connection cn;
	public void ketnoi() throws Exception {
		// b1: xac dinh he quan tri csdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xac dinh duoc hqtcsdl");
		
		String url = "jdbc:sqlserver://NHAT-QUANG\\SQL:1433;databaseName=BeautyGarden;user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.println("Da ket noi hehe");
	}
}
