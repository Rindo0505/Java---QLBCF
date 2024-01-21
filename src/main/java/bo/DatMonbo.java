package bo;

import java.util.ArrayList;

import bean.DatMon;

public class DatMonbo {
	public ArrayList<DatMon> dsdm = new ArrayList<DatMon>();

	public void themMon(int maSanPham, String tenSanPham, int soLuong, Long giaBan) {
		// Kiểm tra trùng mã
		for (DatMon datMon : dsdm) {
			if (datMon.getMaSanPham() == maSanPham) {
				return;
			}
		}

		dsdm.add(new DatMon(maSanPham, tenSanPham, soLuong, giaBan));
	}

	public void suaSoLuong(int maSanPham, int val) {
		for (DatMon datMon : dsdm) {
			if (datMon.getMaSanPham() == maSanPham) {
				if (val == 1) {
					datMon.setSoLuong(datMon.getSoLuong() + 1);
				} else {
					if (datMon.getSoLuong() > 1) {
						datMon.setSoLuong(datMon.getSoLuong() - 1);
					}

				}
				return;
			}
		}

	}

	public void xoaMon(int maSanPham) {
		for (DatMon datMon : dsdm) {
			if (datMon.getMaSanPham() == maSanPham) {
				dsdm.remove(datMon);
				return;
			}
		}
	}

	public long tongTien() {
		long totalMoney = 0;
		for (DatMon datMon : dsdm) {
			totalMoney += datMon.getGiaBan() * Long.valueOf(datMon.getSoLuong());;
		}

		return totalMoney;
	}

	public int tongSoLuong() {
		int total = 0;
		for (DatMon datMon : dsdm) {
			total += datMon.getSoLuong();
		}

		return total;
	}
}