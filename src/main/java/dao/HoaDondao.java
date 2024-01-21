package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.HoaDon;

public class HoaDondao {
	public ArrayList<HoaDon> getHoaDon() throws Exception {
		ArrayList<HoaDon> ds = new ArrayList<HoaDon>();

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select * from HoaDon order by MaHoaDon desc";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			int maHoaDon = rs.getInt("MaHoaDon");
			Date ngayLap = rs.getDate("NgayLap");
			String maNhanVien = rs.getString("MaNhanVien");
			ds.add(new HoaDon(maHoaDon, ngayLap, maNhanVien));
		}
		rs.close();

		return ds;
	}

	public int getHoaDonID() throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select TOP 1 MaHoaDon from HoaDon order by MaHoaDon desc";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		int maHoaDon = 0;
		while (rs.next()) {
			maHoaDon = rs.getInt("MaHoaDon");
		}

		rs.close();
		return maHoaDon;
	}

	public int addHoaDon(Date NgayLap, String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "insert into HoaDon(NgayLap, MaNhanVien) values(?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setDate(1, new java.sql.Date(NgayLap.getTime()));
		cmd.setString(2, MaNhanVien);

		int res = cmd.executeUpdate();
		return res;
	}

	public int editHoaDon(int MaHoaDon, Date NgayLap, String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "update HoaDon set NgayLap=?, MaNhanVien=? where MaHoaDon=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setDate(1, new java.sql.Date(NgayLap.getTime()));
		cmd.setString(2, MaNhanVien);
		cmd.setInt(3, MaHoaDon);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteHoaDon(int MaHoaDon) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "delete from HoaDon where MaHoaDon=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, MaHoaDon);

		int res = cmd.executeUpdate();
		return res;
	}
	
	public int thongKeDTTheoThang(int month) throws Exception {

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select  isnull(sum(od.SoLuong * od.DonGia),0) as Revenue\r\n"
				+ "	from HoaDon as o join ChiTietHoaDon as od on o.MaHoaDon = od.MaHoaDon\r\n"
				+ "	where year(o.NgayLap) = 2023 and month(o.NgayLap) = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, month);
		ResultSet rs = cmd.executeQuery();

		int dt = 0;
		while (rs.next()) {
			dt = rs.getInt("Revenue");
		
		}
		rs.close();

		return dt;
	}
	
	public int thongKeHDTheoThang(int month) throws Exception {

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "	select count(MaHoaDon) as TongHD\r\n"
				+ "	from HoaDon\r\n"
				+ "	where year(NgayLap) = 2023 and month(NgayLap) = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setInt(1, month);
		ResultSet rs = cmd.executeQuery();

		int hd = 0;
		while (rs.next()) {
			hd = rs.getInt("TongHD");
		
		}
		rs.close();

		return hd;
	}

	public static void main(String[] args) {
		HoaDondao t = new HoaDondao();
		ArrayList<HoaDon> p = new ArrayList<HoaDon>();

		int q = 0;
		try {
//			q= t.thongKeDTTheoThang(7);
//			p = t.getHoaDon();
//			q = t.getHoaDonID();
//			q = t.addHoaDon("bunb", "kkk", (long) 50000, 1);
//			q = t.editHoaDon(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteHoaDon(7);
		} catch (Exception e) {

			e.printStackTrace();
		}

//		System.out.println(p);
//		System.out.println(q);

	}
}
