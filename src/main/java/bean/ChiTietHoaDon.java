package bean;

public class ChiTietHoaDon {
	private int MaHoaDon, MaSanPham, SoLuong;
	private Long DonGia, ThanhTien;
	private String Manv, TenSP;
	
	public ChiTietHoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChiTietHoaDon(int maHoaDon, int maSanPham, int soLuong, Long donGia, Long thanhTien, String manv,
			String tenSP) {
		super();
		MaHoaDon = maHoaDon;
		MaSanPham = maSanPham;
		SoLuong = soLuong;
		DonGia = donGia;
		ThanhTien = thanhTien;
		Manv = manv;
		TenSP = tenSP;
	}

	public int getMaHoaDon() {
		return MaHoaDon;
	}

	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}

	public int getMaSanPham() {
		return MaSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		MaSanPham = maSanPham;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public Long getDonGia() {
		return DonGia;
	}

	public void setDonGia(Long donGia) {
		DonGia = donGia;
	}

	public Long getThanhTien() {
		return ThanhTien;
	}

	public void setThanhTien(Long thanhTien) {
		ThanhTien = thanhTien;
	}

	public String getManv() {
		return Manv;
	}

	public void setManv(String manv) {
		Manv = manv;
	}

	public String getTenSP() {
		return TenSP;
	}

	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	
	

}