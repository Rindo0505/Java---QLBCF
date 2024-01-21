package bo;

import java.util.ArrayList;

import bean.ChiTietHoaDon;
import dao.ChiTietHoaDondao;

public class ChiTietHoaDonbo {
	ChiTietHoaDondao cthddao = new ChiTietHoaDondao();
	ArrayList<ChiTietHoaDon> ds;

	public ArrayList<ChiTietHoaDon> getChiTietHoaDon(int maHoaDon) throws Exception {
		ds = cthddao.getChiTietHoaDon(maHoaDon);
		return ds;
	}

	public int add(int maHoaDon, int maSanPham, int soLuong, Long donGia) throws Exception {
		return cthddao.addChiTietHoaDon(maHoaDon, maSanPham, soLuong, donGia);
	}

	public int edit(int maHoaDon, int maSanPham, int soLuong, Long donGia) throws Exception {
		return cthddao.editChiTietHoaDon(maHoaDon, maSanPham, soLuong, donGia);
	}

	public int delete(int maHoaDon, int maSanPham) throws Exception {
		return cthddao.deleteChiTietHoaDon(maHoaDon, maSanPham);
	}
	public Long TongTien(int MaHoaDon) throws Exception {
		return cthddao.TongTien(MaHoaDon);
	}
}
