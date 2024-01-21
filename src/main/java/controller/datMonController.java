package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.DatMonbo;
import bean.DatMon;

/**
 * Servlet implementation class datMonController
 */
@WebServlet("/datMonController")
public class datMonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datMonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int masp = Integer.parseInt(request.getParameter("masp"));
			String tensp = request.getParameter("tensp");
			long giaban = Long.parseLong(request.getParameter("giaban"));

			DatMonbo datMon = null;
			HttpSession session = request.getSession();

			if (session.getAttribute("orderSession") == null) {
				datMon = new DatMonbo();
				session.setAttribute("orderSession", datMon);
			}

			datMon = (DatMonbo) session.getAttribute("orderSession");
			datMon.themMon(masp, tensp, 1, giaban);

			session.setAttribute("orderSession", datMon);
			response.sendRedirect("hienThiDatMonController");

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
