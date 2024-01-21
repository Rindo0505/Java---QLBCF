package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.LSBHbean;

public class LSBHdao {
		public ArrayList<LSBHbean> getLSBH() throws Exception {
			ArrayList<LSBHbean> ds = new ArrayList<LSBHbean>();

			CoSo cs = new CoSo();
			cs.KetNoi();
			// b2: tạo câu lệnh sql
			String sql = "select * from View_LichSuBanHang order by NgayLap desc";
			// b3: tạo câu lệnh
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			// b4: truyền tham số vào câu lệnh nếu có
			// b5: thực hiện câu lệnh
			ResultSet rs = cmd.executeQuery();
			// duyệt rs
			while (rs.next()) {
				 String Manv = rs.getString("MaNhanVien");
				 String Masp = rs.getString("MaSanPham");
				 String Tensp = rs.getString("TenSanPham");
				 Long GiaBan = rs.getLong("GiaBan");
				 Long SoLuong = rs.getLong("SoLuong");
				 Date NgayLap = rs.getDate("NgayLap");
				 Long ThanhTien = rs.getLong("ThanhTien");

				ds.add(new LSBHbean(Manv, Masp, Tensp, GiaBan, SoLuong, NgayLap, ThanhTien));
			}
			// b7: đóng các đối tượng
			rs.close();
			cs.cn.close();
			return ds;
		}

	}


