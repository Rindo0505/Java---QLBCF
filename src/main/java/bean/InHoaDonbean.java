package bean;

import java.util.Date;

public class InHoaDonbean {
	private int MaHD;
	private String TenNhanVien;
	private String MaNV;
	private Long SoLuong;
	private long GiaBan;
	private Date NgayLap;
	private Long ThanhTien;
	
	public InHoaDonbean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InHoaDonbean(int maHD, String tenNhanVien, String maNV, Long soLuong, long giaBan, Date ngayLap,
			Long thanhTien) {
		super();
		MaHD = maHD;
		TenNhanVien = tenNhanVien;
		MaNV = maNV;
		SoLuong = soLuong;
		GiaBan = giaBan;
		NgayLap = ngayLap;
		ThanhTien = thanhTien;
	}

	public int getMaHD() {
		return MaHD;
	}

	public void setMaHD(int maHD) {
		MaHD = maHD;
	}

	public String getTenNhanVien() {
		return TenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		TenNhanVien = tenNhanVien;
	}

	public String getMaNV() {
		return MaNV;
	}

	public void setMaNV(String maNV) {
		MaNV = maNV;
	}

	public Long getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(Long soLuong) {
		SoLuong = soLuong;
	}

	public long getGiaBan() {
		return GiaBan;
	}

	public void setGiaBan(long giaBan) {
		GiaBan = giaBan;
	}

	public Date getNgayLap() {
		return NgayLap;
	}

	public void setNgayLap(Date ngayLap) {
		NgayLap = ngayLap;
	}

	public Long getThanhTien() {
		return ThanhTien;
	}

	public void setThanhTien(Long thanhTien) {
		ThanhTien = thanhTien;
	}
	
	

}
