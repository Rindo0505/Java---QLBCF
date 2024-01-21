package bean;

import java.util.Date;

public class LSBHbean {

	private String Manv;
	private String Masp;
	private String Tensp;
	private Long GiaBan;
	private Long SoLuong;
	private Date NgayLap;
	private Long ThanhTien;
	
	public LSBHbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public LSBHbean(String manv, String masp, String tensp, Long giaBan, Long soLuong, Date ngayLap, Long thanhTien) {
		super();
		Manv = manv;
		Masp = masp;
		Tensp = tensp;
		GiaBan = giaBan;
		SoLuong = soLuong;
		NgayLap = ngayLap;
		ThanhTien = thanhTien;
	}

	public String getManv() {
		return Manv;
	}

	public void setManv(String manv) {
		Manv = manv;
	}

	public String getMasp() {
		return Masp;
	}

	public void setMasp(String masp) {
		Masp = masp;
	}

	public String getTensp() {
		return Tensp;
	}

	public void setTensp(String tensp) {
		Tensp = tensp;
	}

	public Long getGiaBan() {
		return GiaBan;
	}

	public void setGiaBan(Long giaBan) {
		GiaBan = giaBan;
	}

	public Long getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(Long soLuong) {
		SoLuong = soLuong;
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
