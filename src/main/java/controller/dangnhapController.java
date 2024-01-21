package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.TaiKhoan;
import bo.TaiKhoanbo;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String ecrypt(String text) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String enrtext;
		MessageDigest msd = MessageDigest.getInstance("MD5");
		byte[] srctextbyte = text.getBytes("UTF-8");
		byte[] enrtextbyte = msd.digest(srctextbyte);
		BigInteger big = new BigInteger(1, enrtextbyte);
		enrtext = big.toString(16);
		return enrtext;
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangnhapController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tendn = request.getParameter("tendn");
		String mk = request.getParameter("matkhau");
		
		
		TaiKhoanbo tkbo = new TaiKhoanbo();
		ArrayList<TaiKhoan> dstk;

		HttpSession session = request.getSession();
		try {
			dstk = tkbo.getTaiKhoan();
			int check = 1;
			if (tendn != null && mk != null) {
				String matkhau = ecrypt(mk);
				for (TaiKhoan tk : dstk) {
					if (tendn.equals(tk.getTenDangNhap()) && matkhau.equals(tk.getMatKhau())) {
						String manv = tk.getMaNhanVien();
						session.setAttribute("tendn", tendn);
						session.setAttribute("manv", manv);

						// Hiển thị giao diện theo chức vụ
						if (tkbo.getTenChucVu(manv).equals("nhân viên")) {
							response.sendRedirect("hienThiMenuController");
							return;
						} else if (tkbo.getTenChucVu(manv).equals("admin")) {
							response.sendRedirect("GiaoDienChinh_admin");
							return;
						}
					} else {
						check = 0;
					}
				}
			}

			request.setAttribute("dnsai", check);
			RequestDispatcher rd = request.getRequestDispatcher("DangNhap.jsp");
			rd.forward(request, response);
			return;
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
