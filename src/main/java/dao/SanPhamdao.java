package dao;

import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.SanPham;

public class SanPhamdao {
	public ArrayList<SanPham> getSanPham() throws Exception {
		ArrayList<SanPham> ds = new ArrayList<SanPham>();

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select * from SanPham";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int maSanPham = rs.getInt("MaSanPham");
			String tenSanPham = rs.getString("TenSanPham");
			String anhSanPham = rs.getString("AnhSanPham");
			Long giaBan = rs.getLong("GiaBan");
			int maLoaiSP = rs.getInt("MaLoaiSP");
			ds.add(new SanPham(maSanPham, tenSanPham, anhSanPham, giaBan, maLoaiSP));
		}
		rs.close();

		return ds;
	}

	public int addSanPham(String TenSanPham, String AnhSanPham, Long GiaBan, int MaLoaiSP) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "insert into SanPham(TenSanPham, AnhSanPham, GiaBan, MaLoaiSP) values(?,?,?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenSanPham);
		cmd.setString(2, AnhSanPham);
		cmd.setLong(3, GiaBan);
		cmd.setInt(4, MaLoaiSP);

		int res = cmd.executeUpdate();
		return res;
	}

	public int editSanPham(int MaSanPham, String TenSanPham, String AnhSanPham, Long GiaBan, int MaLoaiSP)
			throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "update SanPham set TenSanPham=?, AnhSanPham=?, GiaBan=?, MaLoaiSP=? where MaSanPham=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenSanPham);
		cmd.setString(2, AnhSanPham);
		cmd.setLong(3, GiaBan);
		cmd.setInt(4, MaLoaiSP);
		cmd.setInt(5, MaSanPham);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteSanPham(int MaSanPham) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "delete SanPham where MaSanPham=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, MaSanPham);

		int res = cmd.executeUpdate();
		return res;
	}

	public ArrayList<SanPham> getSanPham_MaLoai(int maloai) throws Exception {
		ArrayList<SanPham> ds = new ArrayList<SanPham>();
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select * from SanPham where MaLoaiSP=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, maloai);

		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int maSanPham = rs.getInt("MaSanPham");
			String tenSanPham = rs.getString("TenSanPham");
			String anhSanPham = rs.getString("AnhSanPham");
			Long giaBan = rs.getLong("GiaBan");
			int maLoaiSP = rs.getInt("MaLoaiSP");
			ds.add(new SanPham(maSanPham, tenSanPham, anhSanPham, giaBan, maLoaiSP));
		}
		rs.close();

		return ds;

	}

	public static void main(String[] args) {
		SanPhamdao t = new SanPhamdao();
		ArrayList<SanPham> p = new ArrayList<SanPham>();

		int q = 0;
		try {
			p = t.getSanPham();
//			q = t.addSanPham("bunb", "kkk", (long) 50000, 1);
//			q = t.editSanPham(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteSanPham(7);
		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(p);
//		System.out.println(q);

	}

}
