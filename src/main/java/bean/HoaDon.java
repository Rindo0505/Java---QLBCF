package bean;

import java.util.Date;

public class HoaDon {
	private int MaHoaDon;
	private Date NgayLap;
	private String MaNhanVien;

	public HoaDon(int maHoaDon, Date ngayLap, String maNhanVien) {
		super();
		MaHoaDon = maHoaDon;
		NgayLap = ngayLap;
		MaNhanVien = maNhanVien;
	}

	public int getMaHoaDon() {
		return MaHoaDon;
	}

	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}

	public Date getNgayLap() {
		return NgayLap;
	}

	public void setNgayLap(Date ngayLap) {
		NgayLap = ngayLap;
	}

	public String getMaNhanVien() {
		return MaNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		MaNhanVien = maNhanVien;
	}

	@Override
	public String toString() {
		return "HoaDon [MaHoaDon=" + MaHoaDon + ", NgayLap=" + NgayLap + ", MaNhanVien=" + MaNhanVien + "]";
	}

}