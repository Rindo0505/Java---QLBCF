package bean;

public class LoaiSanPham {
	private int MaLoaiSP;
	private String TenLoaiSP;

	public LoaiSanPham(int maLoaiSP, String tenLoaiSP) {
		super();
		MaLoaiSP = maLoaiSP;
		TenLoaiSP = tenLoaiSP;
	}

	public int getMaLoaiSP() {
		return MaLoaiSP;
	}

	public void setMaLoaiSP(int maLoaiSP) {
		MaLoaiSP = maLoaiSP;
	}

	public String getTenLoaiSP() {
		return TenLoaiSP;
	}

	public void setTenLoaiSP(String tenLoaiSP) {
		TenLoaiSP = tenLoaiSP;
	}

	@Override
	public String toString() {
		return "LoaiSanPham [MaLoaiSP=" + MaLoaiSP + ", TenLoaiSP=" + TenLoaiSP + "]";
	}

}