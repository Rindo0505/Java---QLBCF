package bean;

public class ChucVu {
	private String MaChucVu, TenChucVu;

	public ChucVu(String maChucVu, String tenChucVu) {
		super();
		MaChucVu = maChucVu;
		TenChucVu = tenChucVu;
	}

	public String getMaChucVu() {
		return MaChucVu;
	}

	public void setMaChucVu(String maChucVu) {
		MaChucVu = maChucVu;
	}

	public String getTenChucVu() {
		return TenChucVu;
	}

	public void setTenChucVu(String tenChucVu) {
		TenChucVu = tenChucVu;
	}

	@Override
	public String toString() {
		return "ChucVu [MaChucVu=" + MaChucVu + ", TenChucVu=" + TenChucVu + "]";
	}

}