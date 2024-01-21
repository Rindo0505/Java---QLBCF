package bean;

public class TaiKhoan {
	private String MaTaiKhoan, TenDangNhap, MatKhau, MaNhanVien;

	public TaiKhoan(String maTaiKhoan, String tenDangNhap, String matKhau, String maNhanVien) {
		super();
		MaTaiKhoan = maTaiKhoan;
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
		MaNhanVien = maNhanVien;
	}

	public String getMaTaiKhoan() {
		return MaTaiKhoan;
	}

	public void setMaTaiKhoan(String maTaiKhoan) {
		MaTaiKhoan = maTaiKhoan;
	}

	public String getTenDangNhap() {
		return TenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public String getMaNhanVien() {
		return MaNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		MaNhanVien = maNhanVien;
	}

	@Override
	public String toString() {
		return "TaiKhoan [MaTaiKhoan=" + MaTaiKhoan + ", TenDangNhap=" + TenDangNhap + ", MatKhau=" + MatKhau
				+ ", MaNhanVien=" + MaNhanVien + "]";
	}

}
