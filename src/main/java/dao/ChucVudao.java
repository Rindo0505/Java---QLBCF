package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ChucVu;

public class ChucVudao {
	public ArrayList<ChucVu> getChucVu() throws Exception {
		ArrayList<ChucVu> ds = new ArrayList<ChucVu>();

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select * from ChucVu";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			String maChucVu = rs.getString("MaChucVu");
			String tenChucVu = rs.getString("TenChucVu");
			ds.add(new ChucVu(maChucVu, tenChucVu));
		}
		rs.close();

		return ds;
	}

	public int addChucVu(String MaChucVu, String TenChucVu) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "insert into ChucVu(MaChucVu, TenChucVu) values(?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaChucVu);
		cmd.setString(2, TenChucVu);

		int res = cmd.executeUpdate();
		return res;
	}

	public int editChucVu(String MaChucVu, String TenChucVu) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "update ChucVu set TenChucVu=? where MaChucVu=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenChucVu);
		cmd.setString(2, MaChucVu);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteChucVu(String MaChucVu) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "delete ChucVu where MaChucVu=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaChucVu);

		int res = cmd.executeUpdate();
		return res;
	}

	public static void main(String[] args) {
		ChucVudao t = new ChucVudao();
		ArrayList<ChucVu> p = new ArrayList<ChucVu>();

		int q = 0;
		try {
			p = t.getChucVu();
//			q = t.addChucVu("bunb", "kkk", (long) 50000, 1);
//			q = t.editChucVu(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteChucVu(7);
		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(p);
//		System.out.println(q);

	}
}
