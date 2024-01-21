package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.Date;

import bo.NhanVienbo;
import bean.NhanVien;
/**
 * Servlet implementation class quanLyNhanVienController_admin
 */
@WebServlet("/quanLyNhanVienController_admin")
public class quanLyNhanVienController_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanLyNhanVienController_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		NhanVienbo nvbo = new NhanVienbo();
		
		String key = request.getParameter("txttk"); 
		
		ArrayList<NhanVien> dsnv;

		try {
			dsnv = nvbo.getNhanVien();

			String action = request.getParameter("action");

			String manv, tennv, macv;
			Date ns;
			Boolean gt;
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			if (action != null) {
				switch (action) {
				case "add":
					manv = request.getParameter("manv");
					tennv = request.getParameter("tennv");
					ns = sdf.parse(request.getParameter("ns"));
					gt = Boolean.parseBoolean(request.getParameter("gt"));
					macv = request.getParameter("macv");

					nvbo.add(manv, tennv, ns, gt, macv);

					break;
				case "edit":
					manv = request.getParameter("manv");
					tennv = request.getParameter("tennv");
					ns = sdf.parse(request.getParameter("ns"));
					gt = Boolean.parseBoolean(request.getParameter("gt"));
					macv = request.getParameter("macv");

					nvbo.edit(manv, tennv, ns, gt, macv);

					break;
				case "delete":
					String confirmDelete = request.getParameter("confirm_delete");
					if (confirmDelete != null && confirmDelete.equals("true")) {
						manv = request.getParameter("manv");
						nvbo.delete(manv);
					}

					break;
				default:
					break;
				}
				response.sendRedirect("quanLyNhanVienController_admin");
			}
			dsnv= nvbo.getNhanVien();
				if (key != null)
				dsnv = nvbo.Tim(key);
			
			request.setAttribute("dsnv", dsnv);

			RequestDispatcher rd = request.getRequestDispatcher("QuanLyNhanVien_admin.jsp");
			rd.forward(request, response);
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
