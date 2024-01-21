package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import bo.ChiTietHoaDonbo;
import bean.ChiTietHoaDon;

/**
 * Servlet implementation class quanLyCTHDController
 */
@WebServlet("/quanLyCTHDController_admin")
public class quanLyCTHDController_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanLyCTHDController_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ChiTietHoaDonbo cthdbo = new ChiTietHoaDonbo();
		ArrayList<ChiTietHoaDon> dscthd;

		try {

			int mahd, masp, sl;
			Long dongia;

			mahd = Integer.parseInt(request.getParameter("mahd"));
			dscthd = cthdbo.getChiTietHoaDon(mahd);

			String action = request.getParameter("action");

			if (action != null) {
				switch (action) {
				case "edit":
					mahd = Integer.parseInt(request.getParameter("mahd"));
					masp = Integer.parseInt(request.getParameter("masp"));
					sl = Integer.parseInt(request.getParameter("sl"));
					dongia = Long.parseLong(request.getParameter("dongia"));

					cthdbo.edit(mahd, masp, sl, dongia);

					break;
				case "delete":
					String confirmDelete = request.getParameter("confirm_delete");
					if (confirmDelete != null && confirmDelete.equals("true")) {
						mahd = Integer.parseInt(request.getParameter("mahd"));
						masp = Integer.parseInt(request.getParameter("masp"));
						cthdbo.delete(mahd, masp);
					}

					break;
				default:
					break;
				}

				response.sendRedirect("quanLyCTHDController_admin");
			}

			request.setAttribute("dscthd", dscthd);

			request.setAttribute("Tt", cthdbo.TongTien(mahd));	
			
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyCTHD_admin.jsp");
			rd.forward(request, response);

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
