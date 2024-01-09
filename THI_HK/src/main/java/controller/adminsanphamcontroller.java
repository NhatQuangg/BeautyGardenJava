package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.Date;
import java.util.ArrayList;

import bean.loaibean;
import bean.sanphambean;
import bo.loaibo;
import bo.sanphambo;

/**
 * Servlet implementation class adminsanphamcontroller
 */
@MultipartConfig
public class adminsanphamcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminsanphamcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsloai = lbo.getloai();
			request.setAttribute("dsloai", lbo.getloai());
			
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> ds = spbo.getsanpham();
			request.setAttribute("dssanpham", spbo.getsanpham());
			
			// chuc nang add update
			if(request.getParameter("butadd")!=null || request.getParameter("butupdate")!=null) {
			// upfile
				// lấy thông tin anh trong "txtanh"
				Part part = request.getPart("txtanh");
				// Lấy đường dẫn thực tế đến thư mục "/img" trong ứng dụng.
				String realPath = request.getServletContext().getRealPath("/img");
				
				// lấy tên tệp từ "part": sd getSubmittedFileName
				// sd Part.of: tạo đối tượng "Path" từ tên tệp -> sd getFileName().toString() để lấy tên tệp (loại bỏ các phần đường dẫn)
				
				String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
				// kiểm tra xem folder có chưa. Nếu chưa thì tạo folder
				if (!Files.exists (Path.of(realPath))) {
					Files.createDirectory (Path.of (realPath));
				}			
				// lưu ảnh vào thư mục "/img"
				part.write(realPath+"/"+filename);
				
				String anh = realPath+"/"+filename;
				String anhne = "img/"+filename;				
				
				// lay thong tin từ input
				String masanpham = request.getParameter("txtmsp");
				String tensanpham = request.getParameter("txttsp");
				String soluong = request.getParameter("txtsl");
				String gia = request.getParameter("txtgia");
				Date ngaynhap = new Date(System.currentTimeMillis());
				String tomtat = request.getParameter("txttomtat");
				String thongtinsanpham = request.getParameter("txtttsp");
				String maloai = request.getParameter("txtmaloai");

				if(request.getParameter("butadd")!=null) {
					// kiem tra masanpham đã tồn tại chưa (!=null: đã tồn tại)
					if(spbo.SearchMSP(masanpham)!=null) {
						request.setAttribute("dssanpham", spbo.getsanpham());
				        
				        RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp?kt=1");
				        rd.forward(request, response);
					}
					if(spbo.SearchML(maloai)==null) {
						request.setAttribute("dssanpham", spbo.getsanpham());
				        
				        RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp?kt=4");
				        rd.forward(request, response);
					}
					else {
						spbo.ThemSanpham(masanpham, tensanpham, Long.parseLong(soluong), Long.parseLong(gia), anhne, ngaynhap, tomtat, thongtinsanpham, maloai);
						
						request.setAttribute("dssanpham", spbo.getsanpham());
						
						RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp?kt=2");
				        rd.forward(request, response);
					}	
				}
				if(request.getParameter("butupdate")!=null) {
					spbo.SuaSanpham(masanpham, tensanpham, Long.parseLong(soluong), Long.parseLong(gia), anhne, ngaynhap, tomtat, thongtinsanpham, maloai);
				}
			}
			
			// Lay thong tin tu bảng
			String tab = request.getParameter("tab");
			String msp = request.getParameter("msp");
			String tsp = request.getParameter("tsp");
			String sl = request.getParameter("sl");
			String g = request.getParameter("g");
			String ml = request.getParameter("ml");
			//funcion delete
			if(tab!=null && tab.equals("xoa")) {
				spbo.XoaSanpham(msp);
			}
			else 
				if(tab!=null && tab.equals("chon")) {
					request.setAttribute("msp", msp);
					request.setAttribute("tsp", tsp);
					request.setAttribute("sl", sl);
					request.setAttribute("g", g);
					request.setAttribute("ml", ml);
				}
			
			request.setAttribute("dssanpham", spbo.getsanpham());
	        
	        RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp");
	        rd.forward(request, response);
	        
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
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
