package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class CoSo {

	public static Connection cn;

	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // Xác định HQTCSDL
			System.out.println("Da nap Driver");
			String st = "jdbc:sqlserver://DESKTOP-ETF8C6F\\\\SQLEXPRESS:1433;databaseName=QuanLyBanCaPhe;user=sa; password=123";
			cn = DriverManager.getConnection(st);
			System.out.println("Da ket noi den csdl QuanLyBanCaPhe");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		CoSo cs = new CoSo();
		cs.KetNoi();
	}
}