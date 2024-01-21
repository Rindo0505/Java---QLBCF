package bo;

import java.util.ArrayList;

import bean.TaiKhoan;
import dao.TaiKhoandao;

public class TaiKhoanbo {
	TaiKhoandao tkdao = new TaiKhoandao();
	ArrayList<TaiKhoan> ds;

	public ArrayList<TaiKhoan> getTaiKhoan() throws Exception {
		ds = tkdao.getTaiKhoan();
		return ds;
	}

	public ArrayList<TaiKhoan> getDSTK(String tdn) throws Exception {
		ds = tkdao.getDSTK(tdn);
		return ds;
	}

	public String getTenChucVu(String maNhanVien) throws Exception {
		String tenChucVu = tkdao.getTenChucVu(maNhanVien);
		return tenChucVu;
	}

	public int add(String MaTaiKhoan, String TenDangNhap, String MatKhau, String MaNhanVien) throws Exception {
		return tkdao.addTaiKhoan(MaTaiKhoan, TenDangNhap, MatKhau, MaNhanVien);
	}

	public int edit(String MaTaiKhoan, String TenDangNhap, String MatKhau, String MaNhanVien) throws Exception {
		return tkdao.editTaiKhoan(MaTaiKhoan, TenDangNhap, MatKhau, MaNhanVien);
	}

	public int delete(String MaTaiKhoan) throws Exception {
		return tkdao.deleteTaiKhoan(MaTaiKhoan);
	}

	public ArrayList<TaiKhoan> getCTTK(String tdn) throws Exception {
		return tkdao.getCTTK(tdn);
	}

	public ArrayList<TaiKhoan> Tim(String key) throws Exception {
		ArrayList<TaiKhoan> tam = new ArrayList<TaiKhoan>();

		for (TaiKhoan tk : getDSTK(key)) {
			if (tk.getMaTaiKhoan().trim().toLowerCase().contains(key.trim().toLowerCase())
					|| tk.getTenDangNhap().trim().toLowerCase().contains(key.trim().toLowerCase()))
				tam.add(tk);
			System.out.println(tam);
		}

		return tam;
	}
}
