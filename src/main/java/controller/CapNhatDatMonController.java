package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import bo.DatMonbo;
import bo.LoaiSanPhambo;
import bo.SanPhambo;
import bean.LoaiSanPham;
import bean.SanPham;

/**
 * Servlet implementation class CapNhatDatMonController
 */
@WebServlet("/CapNhatDatMonController")
public class CapNhatDatMonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CapNhatDatMonController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoaiSanPhambo lspbo = new LoaiSanPhambo();
		SanPhambo spbo = new SanPhambo();

		ArrayList<LoaiSanPham> dslsp;
		ArrayList<SanPham> dssp;
		try {
			HttpSession session = request.getSession();
			DatMonbo gh = (DatMonbo) session.getAttribute("orderSession");

			String maSP = request.getParameter("masp");
			if (maSP != null) {
				gh.xoaMon(Integer.parseInt(maSP));
			}

			String maTangSL = request.getParameter("increase");
			if (maTangSL != null) {
				gh.suaSoLuong(Integer.parseInt(maTangSL), 1);
			}

			String maGiamSL = request.getParameter("decrease");
			if (maGiamSL != null) {
				gh.suaSoLuong(Integer.parseInt(maGiamSL), -1);
			}
			session.setAttribute("orderSession", gh);

			dslsp = lspbo.getLoaiSP();
			dssp = spbo.getSanPham();
			String maloai = request.getParameter("maloai");

			if (maloai != null) {
				dssp = spbo.getSanPham_MaLoai(Integer.parseInt(maloai));
			} else {
				dssp = spbo.getSanPham_MaLoai(1);
			}

			request.setAttribute("dslsp", dslsp);
			request.setAttribute("dssp", dssp);

			RequestDispatcher rd = request.getRequestDispatcher("BanHang.jsp");
			rd.forward(request, response);
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
