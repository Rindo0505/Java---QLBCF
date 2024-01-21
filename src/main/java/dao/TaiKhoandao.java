package dao;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.TaiKhoan;

public class TaiKhoandao {
	public ArrayList<TaiKhoan> getTaiKhoan() throws Exception {
		ArrayList<TaiKhoan> ds = new ArrayList<TaiKhoan>();

		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "select * from TaiKhoan";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			String maTaiKhoan = rs.getString("MaTaiKhoan");
			String tenDangNhap = rs.getString("TenDangNhap");
			String matKhau = rs.getString("MatKhau");
			String maNhanVien = rs.getString("MaNhanVien");
			ds.add(new TaiKhoan(maTaiKhoan, tenDangNhap, matKhau, maNhanVien));
		}
		rs.close();

		return ds;
	}
	
	public ArrayList<TaiKhoan> getDSTK(String tdn) throws Exception {
		ArrayList<TaiKhoan> ds = new ArrayList<TaiKhoan>();

		CoSo cs = new CoSo();
		cs.KetNoi();
		String sql = "select * from TaiKhoan where TenDangNhap != ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, tdn);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			String maTaiKhoan = rs.getString("MaTaiKhoan");
			String tenDangNhap = rs.getString("TenDangNhap");
			String matKhau = rs.getString("MatKhau");
			String maNhanVien = rs.getString("MaNhanVien");
			ds.add(new TaiKhoan(maTaiKhoan, tenDangNhap, matKhau, maNhanVien));
		}
		rs.close();

		return ds;
	}
	
	public String getTenChucVu(String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "SELECT ChucVu.TenChucVu FROM TaiKhoan INNER JOIN NhanVien ON TaiKhoan.MaNhanVien = NhanVien.MaNhanVien INNER JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu WHERE (TaiKhoan.MaNhanVien = ?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaNhanVien);

		ResultSet rs = cmd.executeQuery();
		String tenChucVu = null;
		while (rs.next()) {
			tenChucVu = rs.getString("TenChucVu");
		}
		rs.close();
		
		return tenChucVu;
	}

	public ArrayList<TaiKhoan> getCTTK(String tdn) throws Exception {
		ArrayList<TaiKhoan> ds = new ArrayList<TaiKhoan>();

		CoSo cs = new CoSo();
		cs.KetNoi();
		String sql = "select * from TaiKhoan where TenDangNhap = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, tdn);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			String maTaiKhoan = rs.getString("MaTaiKhoan");
			String tenDangNhap = rs.getString("TenDangNhap");
			String matKhau = rs.getString("MatKhau");
			String maNhanVien = rs.getString("MaNhanVien");
			ds.add(new TaiKhoan(maTaiKhoan, tenDangNhap, matKhau, maNhanVien));
		}
		rs.close();

		return ds;
	}
	
	public int addTaiKhoan(String MaTaiKhoan, String TenDangNhap, String MatKhau, String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		String pass= ecrypt(MatKhau);
		String sql = "insert into TaiKhoan(MaTaiKhoan, TenDangNhap, MatKhau, MaNhanVien) values(?,?,?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaTaiKhoan);
		cmd.setString(2, TenDangNhap);
		cmd.setString(3, pass);
		cmd.setString(4, MaNhanVien);

		int res = cmd.executeUpdate();
		return res;
	}
	
	public static String ecrypt(String text) throws NoSuchAlgorithmException, UnsupportedEncodingException{ 
		String enrtext; 
		MessageDigest msd=MessageDigest.getInstance("MD5"); 
		byte[] srctextbyte=text.getBytes("UTF-8"); 
		byte[] enrtextbyte=msd.digest(srctextbyte); 
		BigInteger big = new BigInteger(1, enrtextbyte); 
		enrtext=big.toString(16); 
		return enrtext; 
	}

	public int editTaiKhoan(String MaTaiKhoan, String TenDangNhap, String MatKhau, String MaNhanVien) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();
		String pass= ecrypt(MatKhau); 
		String sql = "update TaiKhoan set TenDangNhap=?, MatKhau=?, MaNhanVien=? where MaTaiKhoan=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, TenDangNhap);
		cmd.setString(2, pass);
		cmd.setString(3, MaNhanVien);
		cmd.setString(4, MaTaiKhoan);

		int res = cmd.executeUpdate();
		return res;
	}

	public int deleteTaiKhoan(String MaTaiKhoan) throws Exception {
		CoSo cs = new CoSo();
		cs.KetNoi();

		String sql = "delete TaiKhoan where MaTaiKhoan=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, MaTaiKhoan);

		int res = cmd.executeUpdate();
		return res;
	}

	public static void main(String[] args) {
		TaiKhoandao t = new TaiKhoandao();
		ArrayList<TaiKhoan> p = new ArrayList<TaiKhoan>();
		String ten = null;

		int q = 0;
		try {
			ten=t.getTenChucVu("NV5");
//			p = t.getTaiKhoan();
//			q = t.addTaiKhoan("bunb", "kkk", (long) 50000, 1);
//			q = t.editTaiKhoan(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteTaiKhoan(7);
		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(ten);
//		System.out.println(p);
//		System.out.println(q);

	}
}