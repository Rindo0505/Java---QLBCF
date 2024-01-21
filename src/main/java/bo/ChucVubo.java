package bo;
import java.util.ArrayList;

import bean.ChucVu;
import dao.ChucVudao;

public class ChucVubo {
	ChucVudao cvbo = new ChucVudao();
	ArrayList<ChucVu> ds;

	public ArrayList<ChucVu> getChucVu() throws Exception {
		ds = cvbo.getChucVu();
		return ds;
	}

	public int add(String MaChucVu, String TenChucVu) throws Exception {
		return cvbo.addChucVu(MaChucVu, TenChucVu);
	}

	public int edit(String MaChucVu, String TenChucVu) throws Exception {
		return cvbo.editChucVu(MaChucVu, TenChucVu);
	}

	public int delete(String MaChucVu) throws Exception {
		return cvbo.deleteChucVu(MaChucVu);
	}
}
