package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.LoaiSanPham;
import bo.LoaiSanPhambo;

/**
 * Servlet implementation class quanLyLoaiSanPhamController_admin
 */
@WebServlet("/quanLyLoaiSanPhamController_admin")
public class quanLyLoaiSanPhamController_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanLyLoaiSanPhamController_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		LoaiSanPhambo lspbo = new LoaiSanPhambo();
		
		String key = request.getParameter("txttk");
		
		ArrayList<LoaiSanPham> dslsp;
		
		

		try {
			dslsp = lspbo.getLoaiSP();

			String action = request.getParameter("action");

			int malsp;
			String tenlsp;

			if (action != null) {
				switch (action) {
				case "add":
					tenlsp = request.getParameter("tenlsp");
					lspbo.add(tenlsp);

					break;
				case "edit":
					malsp = Integer.parseInt(request.getParameter("malsp"));
					tenlsp = request.getParameter("tenlsp");
					

					lspbo.edit(malsp, tenlsp);

					break;
				case "delete":
					malsp = Integer.parseInt(request.getParameter("malsp"));
					lspbo.delete(malsp);

					break;

				default:
					break;
				}
				
				response.sendRedirect("quanLyLoaiSanPhamController_admin");
			}
			
			dslsp= lspbo.getLoaiSP();
			if (key != null)
			dslsp = lspbo.Tim(key);
			request.setAttribute("dslsp", dslsp);

			RequestDispatcher rd = request.getRequestDispatcher("QuanLyLoaiSanPham_admin.jsp");
			rd.forward(request,response);

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
