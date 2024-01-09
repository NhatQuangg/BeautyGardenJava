package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import bo.giohangbo;

/**
 * Servlet implementation class giocontroller
 */
public class giocontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giocontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String masanpham = request.getParameter("msp");
			String tensanpham = request.getParameter("tsp");
			String giatam = request.getParameter("gia");
			String anh = request.getParameter("anh");
			
			if(masanpham!=null && tensanpham!=null && giatam!=null && anh!=null) {
				giohangbo gh = null;
				long gia = Long.parseLong(giatam);
				HttpSession session = request.getSession();
				// kiem tra session "gh" co hay khong. Khong: tạo ra
				if(session.getAttribute("gh")==null) {
					gh = new giohangbo();
					session.setAttribute("gh", gh);
				}
				// lay doi tuong "gh" tu attribute "gh"
				gh = (giohangbo)session.getAttribute("gh");
				gh.ThemHang(masanpham, anh, tensanpham, gia, 1);
				session.setAttribute("gh", gh);
				
				response.sendRedirect("giohangcontroller");
			}
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
