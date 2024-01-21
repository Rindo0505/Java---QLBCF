package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.HoaDon;
import bo.HoaDonbo;

/**
 * Servlet implementation class thongKeController_nhanvien
 */
@WebServlet("/thongKeController_nhanvien")
public class thongKeController_nhanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongKeController_nhanvien() {
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
		ArrayList<Integer> dsdt, dshd;

		try {
			dsdt = hdbo.thongKeDoanhThu();
			dshd = hdbo.thongKeHoaDon();
			
			request.setAttribute("dsdt", dsdt);
			request.setAttribute("dshd", dshd);
			
			RequestDispatcher rd = request.getRequestDispatcher("ThongKe_nhanvien.jsp");
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
