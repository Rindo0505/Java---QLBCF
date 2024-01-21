package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.HoaDon;
import bo.HoaDonbo;

/**
 * Servlet implementation class quanLyHDController_nhanvien
 */
@WebServlet("/quanLyHDController_nhanvien")
public class quanLyHDController_nhanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanLyHDController_nhanvien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		HoaDonbo hdbo = new HoaDonbo();
		ArrayList<HoaDon> dshd;

		try {
			dshd = hdbo.getHoaDon();

			String action = request.getParameter("action");

			int mahd;
			Date nl;
			String manv;

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			if (action != null) {
				switch (action) {
				case "add":
					nl = sdf.parse(request.getParameter("nl"));
					manv = request.getParameter("manv");

					hdbo.add(nl, manv);

					break;
				case "edit":
					mahd = Integer.parseInt(request.getParameter("mahd"));
					nl = sdf.parse(request.getParameter("nl"));
					manv = request.getParameter("manv");

					hdbo.edit(mahd, nl, manv);

					break;
				case "delete":
					String confirmDelete = request.getParameter("confirm_delete");
					if (confirmDelete != null && confirmDelete.equals("true")) {
						mahd = Integer.parseInt(request.getParameter("mahd"));
						hdbo.deleteHoaDon(mahd);
					}

					break;
				default:
					break;
				}
				response.sendRedirect("quanLyHDController_nhanvien");
				return;
			}

			request.setAttribute("dshd", dshd);

			RequestDispatcher rd = request.getRequestDispatcher("QuanLyHoaDon_nhanvien.jsp");
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
