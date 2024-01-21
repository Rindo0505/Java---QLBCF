package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.HoaDon;
import bean.InHoaDonbean;

public class InHoaDondao {
	public ArrayList<InHoaDonbean> getInHoaDon() throws Exception {
		ArrayList<InHoaDonbean> ds = new ArrayList<InHoaDonbean>();

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select *from InHoaDon where MaHoaDon =?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			
			int MaHD = rs.getInt("MaHoaDon");
			String TenNhanVien = rs.getString("TenNhanVien");
			String MaNV = rs.getString("MaNhanVien");
			Long SoLuong = rs.getLong("SoLuong");
			Long GiaBan = rs.getLong("GiaBan");
			Date NgayLap = rs.getDate("NgayLap");
			Long ThanhTien = rs.getLong("ThanhTien");
			ds.add(new InHoaDonbean(MaHD, TenNhanVien, MaNV, SoLuong, MaHD, NgayLap, ThanhTien));
		}
		rs.close();

		return ds;
	}
}
