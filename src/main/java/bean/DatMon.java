package bean;

public class DatMon {

	private int MaSanPham;
	private String TenSanPham;
	private int SoLuong;
	private Long GiaBan;

	public DatMon(int maSanPham, String tenSanPham, int soLuong, Long giaBan) {
		super();
		MaSanPham = maSanPham;
		TenSanPham = tenSanPham;
		SoLuong = soLuong;
		GiaBan = giaBan;
	}

	public int getMaSanPham() {
		return MaSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		MaSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return TenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		TenSanPham = tenSanPham;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public Long getGiaBan() {
		return GiaBan;
	}

	public void setGiaBan(Long giaBan) {
		GiaBan = giaBan;
	}

	@Override
	public String toString() {
		return "DatMon [MaSanPham=" + MaSanPham + ", TenSanPham=" + TenSanPham + ", SoLuong=" + SoLuong + ", GiaBan="
				+ GiaBan + "]";
	}

}
