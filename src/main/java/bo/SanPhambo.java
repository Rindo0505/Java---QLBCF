package bo;

import java.util.ArrayList;
import bean.SanPham;
import dao.SanPhamdao;

public class SanPhambo {
	SanPhamdao spdao = new SanPhamdao();
	ArrayList<SanPham> ds;

	public ArrayList<SanPham> getSanPham() throws Exception {
		ds = spdao.getSanPham();
		return ds;
	}

	public int add(String TenSanPham, String AnhSanPham, Long GiaBan, int MaLoaiSP) throws Exception {
		return spdao.addSanPham(TenSanPham, AnhSanPham, GiaBan, MaLoaiSP);
	}

	public int edit(int MaSanPham, String TenSanPham, String AnhSanPham, Long GiaBan, int MaLoaiSP) throws Exception {
		return spdao.editSanPham(MaSanPham, TenSanPham, AnhSanPham, GiaBan, MaLoaiSP);
	}

	public int delete(int MaSanPham) throws Exception {
		return spdao.deleteSanPham(MaSanPham);
	}

	public ArrayList<SanPham> getSanPham_MaLoai(int maloai) throws Exception {
		System.out.println(maloai);
		ArrayList<SanPham> ds;
		ds = spdao.getSanPham_MaLoai(maloai);
		return ds;
	}
	
	
	public ArrayList<SanPham> Tim(String key) throws Exception {
		ArrayList<SanPham> tam = new ArrayList<SanPham>();
		
		for (SanPham s : ds) {
			if (s.getTenSanPham().trim().toLowerCase().contains(key.trim().toLowerCase()) ) {
				tam.add(s);
			}
		}
					
		return tam;
	}
}
