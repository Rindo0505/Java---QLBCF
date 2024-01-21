package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;

import bo.ChucVubo;
import bean.ChucVu;

/**
 * Servlet implementation class quanLyChucVuController_amin
 */
@WebServlet("/quanLyChucVuController_admin")
public class quanLyChucVuController_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanLyChucVuController_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ChucVubo cvbo = new ChucVubo();
		ArrayList<ChucVu> dscv;

		try {
			dscv = cvbo.getChucVu();

			String action = request.getParameter("action");

			String macv, tencv;

			if (action != null) {
				switch (action) {
				case "add":
					macv = request.getParameter("macv");
					tencv = request.getParameter("tencv");

					cvbo.add(macv, tencv);

					break;
				case "edit":
					macv = request.getParameter("macv");
					tencv = request.getParameter("tencv");

					cvbo.edit(macv, tencv);

					break;
				case "delete":
					String confirmDelete = request.getParameter("confirm_delete");
					if (confirmDelete != null && confirmDelete.equals("true")) {
						macv = request.getParameter("macv");
						cvbo.delete(macv);
					}

					break;
				default:
					break;
				}
				response.sendRedirect("quanLyChucVuController_admin");
			}

			request.setAttribute("dscv", dscv);

			RequestDispatcher rd = request.getRequestDispatcher("QuanLyChucVu_admin.jsp");
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
