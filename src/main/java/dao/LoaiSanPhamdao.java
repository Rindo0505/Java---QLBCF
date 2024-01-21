package dao;

import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.LoaiSanPham;

public class LoaiSanPhamdao {
	public ArrayList<LoaiSanPham> getLoaiSP() throws Exception {
		ArrayList<LoaiSanPham> ds = new ArrayList<LoaiSanPham>();
		
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "select * from LoaiSanPham";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int maLoaiSP = rs.getInt("MaLoaiSP");
			String tenLoaiSP = rs.getString("TenLoaiSP");
			ds.add(new LoaiSanPham(maLoaiSP, tenLoaiSP));
		}
		rs.close();

		return ds;
	}

	public int addLoaiSP(String TenLoaiSP) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "insert into LoaiSanPham(TenLoaiSP) values(?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenLoaiSP);

		int res = cmd.executeUpdate();
		return res;
	}

	public int editLoaiSP(int MaLoaiSP, String TenLoaiSP) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "update LoaiSanPham set TenLoaiSP=? where MaLoaiSP=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenLoaiSP);
		cmd.setInt(2, MaLoaiSP);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteLoaiSP(int MaLoaiSP) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		
		String sql = "delete LoaiSanPham where MaLoaiSP=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, MaLoaiSP);

		int res = cmd.executeUpdate();
		return res;
	}

	public static void main(String[] args) {
		LoaiSanPhamdao t = new LoaiSanPhamdao();

		int q = 0;
		try {
			q = t.deleteLoaiSP(6);
		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(q);
	}

}
