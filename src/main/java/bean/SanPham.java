package bean;

public class SanPham {

	private int MaSanPham;
	private String TenSanPham;
	private String AnhSanPham;
	private Long GiaBan;
	private int MaLoaiSP;

	public SanPham(int maSanPham, String tenSanPham, String anhSanPham, Long giaBan, int maLoaiSP) {
		super();
		MaSanPham = maSanPham;
		TenSanPham = tenSanPham;
		AnhSanPham = anhSanPham;
		GiaBan = giaBan;
		MaLoaiSP = maLoaiSP;
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

	public String getAnhSanPham() {
		return AnhSanPham;
	}

	public void setAnhSanPham(String anhSanPham) {
		AnhSanPham = anhSanPham;
	}

	public Long getGiaBan() {
		return GiaBan;
	}

	public void setGiaBan(Long giaBan) {
		GiaBan = giaBan;
	}

	public int getMaLoaiSP() {
		return MaLoaiSP;
	}

	public void setMaLoaiSP(int maLoaiSP) {
		MaLoaiSP = maLoaiSP;
	}

	@Override
	public String toString() {
		return "SanPham [MaSanPham=" + MaSanPham + ", TenSanPham=" + TenSanPham + ", AnhSanPham=" + AnhSanPham
				+ ", GiaBan=" + GiaBan + ", MaLoaiSP=" + MaLoaiSP + "]";
	}
}