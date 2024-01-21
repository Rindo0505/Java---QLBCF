package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.LoaiSanPhambo;
import bo.SanPhambo;

/**
 * Servlet implementation class UpLoadFileController
 */
@WebServlet("/UpLoadFileController")
public class UpLoadFileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpLoadFileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "images";
		response.getWriter().println(dirUrl1);
		
		LoaiSanPhambo lsp = new LoaiSanPhambo();
		SanPhambo spbo= new SanPhambo() ;
		
		if(request.getContentLength()<=0) {//Chay lan dau
			try {
				
				
				request.setAttribute("dssp", spbo.getSanPham());
				request.setAttribute("dsl", lsp.getLoaiSP());
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher rd= 
					request.getRequestDispatcher("UpLoadFile.jsp");
			rd.forward(request, response);
			return;
		}
		
		try {
			String masp = null, tensp = null, anh = null, gia = null, malsp = null, txtAnh=null;

			// Lấy loại về
			request.setAttribute("dsl", lsp.getLoaiSP());
			request.setAttribute("dssp", spbo.getSanPham());
			
			List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
			
			// duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
					// xử lý file
					String nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
						
						// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
						String dirUrl = request.getServletContext().getRealPath("") + File.separator + "images";
						File dir = new File(dirUrl);
						if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
							dir.mkdir();
						}
						
						String fileImg = dirUrl + File.separator + nameimg;
						File file = new File(fileImg);// tạo file
						
						try {
							fileItem.write(file);// lưu file
							anh = "images/" + nameimg;
							System.out.println("UPLOAD THÀNH CÔNG...!");
							System.out.println("Đường dẫn lưu file là: " + dirUrl);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
					
				} else// Neu la control
				{
					String tentk = fileItem.getFieldName();
					
					if(tentk.equals("masp")) {
						masp = fileItem.getString();
					}
					
					if (tentk.equals("tensp")) {
						
						tensp = fileItem.getString("utf-8");
					System.out.println(tensp);
//						String tams=URLEncoder.encode(tensach,"utf-8");
//						System.out.println(tams);
						//String tams2=URLDecoder.decode(tensach,"utf-8");
						//System.out.println(tams2);
						
					}
					
					if (tentk.equals("giaban"))
						gia = fileItem.getString();
					if (tentk.equals("selectml"))
						malsp = fileItem.getString();
					if(tentk.equals("txtAnh"))
						txtAnh = fileItem.getString();
						
				}
			}
			int kq=0; 
			
			if(anh!=null) {
				kq= spbo.edit(Integer.parseInt(masp), tensp, anh, Long.parseLong(gia), Integer.parseInt(malsp));
			}else {
				kq= spbo.edit(Integer.parseInt(masp), tensp, txtAnh, Long.parseLong(gia), Integer.parseInt(malsp));
			}
				
			if(kq == 1)
				request.setAttribute("tb", "Cập nhập sản phẩm thành công!");
			else
				request.setAttribute("tb", "Cập nhập sản phẩm thất bại thất bại");
			
				request.setAttribute("dssp", spbo.getSanPham());
				
			RequestDispatcher rd = request.getRequestDispatcher("QuanLySanPham_admin.jsp");
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
