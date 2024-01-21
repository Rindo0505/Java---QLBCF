package bo;

import java.util.ArrayList;

import bean.LoaiSanPham;
import bean.NhanVien;
import dao.LoaiSanPhamdao;

public class LoaiSanPhambo {
	LoaiSanPhamdao lspdao = new LoaiSanPhamdao();
	ArrayList<LoaiSanPham> ds;

	public ArrayList<LoaiSanPham> getLoaiSP() throws Exception {
		ds = lspdao.getLoaiSP();
		return ds;
	}

	public int add(String TenLoaiSP) throws Exception {
		return lspdao.addLoaiSP(TenLoaiSP);
	}

	public int edit(int MaLoaiSP, String TenLoaiSP) throws Exception {
		return lspdao.editLoaiSP(MaLoaiSP, TenLoaiSP);
	}

	public int delete(int MaLoaiSP) throws Exception {
		return lspdao.deleteLoaiSP(MaLoaiSP);
	}
	
	public ArrayList<LoaiSanPham> Tim(String key) throws Exception {
		ArrayList<LoaiSanPham> tam = new ArrayList<LoaiSanPham>();
		
		for (LoaiSanPham lsp : ds) {
			if (lsp.getTenLoaiSP().trim().toLowerCase().contains(key.trim().toLowerCase()) ) {
				tam.add(lsp);
			}
		}
					
		return tam;
	}
}
