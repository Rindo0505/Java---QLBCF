package bo;

import java.util.ArrayList;
import java.util.Date;

import bean.HoaDon;
import dao.HoaDondao;

public class HoaDonbo {
	HoaDondao hddao = new HoaDondao();
	ArrayList<HoaDon> ds;

	public ArrayList<HoaDon> getHoaDon() throws Exception {
		ds = hddao.getHoaDon();
		return ds;
	}

	public int getHoaDonID() throws Exception {
		int mahd = hddao.getHoaDonID();
		return mahd;
	}

	public int add(Date ngayLap, String maNhanVien) throws Exception {
		return hddao.addHoaDon(ngayLap, maNhanVien);
	}

	public int edit(int maHoaDon, Date ngayLap, String maNhanVien) throws Exception {
		return hddao.editHoaDon(maHoaDon, ngayLap, maNhanVien);
	}

	public int deleteHoaDon(int maHoaDon) throws Exception {
		return hddao.deleteHoaDon(maHoaDon);
	}

	public ArrayList<Integer> thongKeDoanhThu() throws Exception {
		ArrayList<Integer> dsdt = new ArrayList<Integer>();
		for (int i = 1; i <= 12; ++i) {
			int dt = hddao.thongKeDTTheoThang(i);
			dsdt.add(dt);
		}

		return dsdt;
	}
	
	public ArrayList<Integer> thongKeHoaDon() throws Exception {
		ArrayList<Integer> dshd = new ArrayList<Integer>();
		for (int i = 1; i <= 12; ++i) {
			int hd = hddao.thongKeHDTheoThang(i);
			dshd.add(hd);
		}

		return dshd;
	}
}
