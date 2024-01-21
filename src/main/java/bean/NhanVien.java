package bean;

import java.util.Date;

public class NhanVien {
	private String MaNhanVien, TenNhanVien, MaChucVu;
	private Date NgaySinh;
	private Boolean GioiTinh;

	public NhanVien(String maNhanVien, String tenNhanVien, Date ngaySinh, Boolean gioiTinh, String maChucVu) {
		super();
		MaNhanVien = maNhanVien;
		TenNhanVien = tenNhanVien;
		NgaySinh = ngaySinh;
		GioiTinh = gioiTinh;
		MaChucVu = maChucVu;
	}

	public String getMaNhanVien() {
		return MaNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		MaNhanVien = maNhanVien;
	}

	public String getTenNhanVien() {
		return TenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		TenNhanVien = tenNhanVien;
	}

	public String getMaChucVu() {
		return MaChucVu;
	}

	public void setMaChucVu(String maChucVu) {
		MaChucVu = maChucVu;
	}

	public Date getNgaySinh() {
		return NgaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}

	public Boolean getGioiTinh() {
		return GioiTinh;
	}

	public void setGioiTinh(Boolean gioiTinh) {
		GioiTinh = gioiTinh;
	}

	@Override
	public String toString() {
		return "NhanVien [MaNhanVien=" + MaNhanVien + ", TenNhanVien=" + TenNhanVien
				+ ", NgaySinh=" + NgaySinh + ", GioiTinh=" + GioiTinh + ", MaChucVu=" + MaChucVu + "]";
	}

}
