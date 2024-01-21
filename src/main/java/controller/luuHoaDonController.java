package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DatMon;
import bo.DatMonbo;
import bo.HoaDonbo;
import bo.ChiTietHoaDonbo;

/**
 * Servlet implementation class luuHoaDonController
 */
@WebServlet("/luuHoaDonController")
public class luuHoaDonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public luuHoaDonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			DatMonbo gh = new DatMonbo();
			gh = (DatMonbo) session.getAttribute("orderSession");
			String manv = (String) session.getAttribute("manv");

			HoaDonbo hdbo = new HoaDonbo();
			ChiTietHoaDonbo cthdbo = new ChiTietHoaDonbo();
			Date ngaylap = new Date();
			hdbo.add(ngaylap, manv);

			int mahd = hdbo.getHoaDonID();

			for (DatMon datMon : gh.dsdm) {
				int i = cthdbo.add(mahd, datMon.getMaSanPham(), datMon.getSoLuong(), datMon.getGiaBan());
			}

			session.removeAttribute("orderSession");
			response.sendRedirect("hienThiMenuController");
			return;

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
