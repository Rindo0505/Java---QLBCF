package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.NhanVien;

public class NhanViendao {
	public ArrayList<NhanVien> getNhanVien() throws Exception {
		ArrayList<NhanVien> ds = new ArrayList<NhanVien>();
		
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "select * from NhanVien";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			String maNhanVien = rs.getString("MaNhanVien");
			String tenNhanVien = rs.getString("TenNhanVien");
			Date ngaySinh = rs.getDate("NgaySinh");
			Boolean gioiTinh = rs.getBoolean("GioiTinh");
			String maChucVu = rs.getString("MaChucVu");
			ds.add(new NhanVien(maNhanVien, tenNhanVien, ngaySinh, gioiTinh, maChucVu));
		}
		rs.close();

		return ds;
	}

	public int addNhanVien(String MaNhanVien, String TenNhanVien, Date NgaySinh, Boolean GioiTinh, String MaChucVu)
			throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "insert into NhanVien(MaNhanVien, TenNhanVien, NgaySinh, GioiTinh, MaChucVu) values(?,?,?,?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaNhanVien);
		cmd.setString(2, TenNhanVien);
		cmd.setDate(3, new java.sql.Date(NgaySinh.getTime())); // getTime: đổi ra giây.
		cmd.setBoolean(4, GioiTinh);
		cmd.setString(5, MaChucVu);

		int res = cmd.executeUpdate();
		return res;
	}

	public int editNhanVien(String MaNhanVien, String TenNhanVien, Date NgaySinh, Boolean GioiTinh, String MaChucVu)
			throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "update NhanVien set TenNhanVien=?, NgaySinh=?, GioiTinh=?, MaChucVu=? where MaNhanVien=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenNhanVien);
		cmd.setDate(2, new java.sql.Date(NgaySinh.getTime()));
		cmd.setBoolean(3, GioiTinh);
		cmd.setString(4, MaChucVu);
		cmd.setString(5, MaNhanVien);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteNhanVien(String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "delete NhanVien where MaNhanVien=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaNhanVien);

		int res = cmd.executeUpdate();
		return res;
	}

	public static void main(String[] args) {
		NhanViendao t = new NhanViendao();
		ArrayList<NhanVien> p = new ArrayList<NhanVien>();

		int q = 0;
		try {
			p = t.getNhanVien();
//			q = t.addNhanVien("bunb", "kkk", (long) 50000, 1);
//			q = t.editNhanVien(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteNhanVien(7);
		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(p);
//		System.out.println(q);

	}
}
