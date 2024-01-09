package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class xacnhangiohangcontroller
 */
public class xacnhangiohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhangiohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			khachhangbean kh = (khachhangbean)session.getAttribute("dn");
			if(kh==null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhapxn.jsp");
				rd.forward(request, response);
			}
			else {
				giohangbo gh = (giohangbo)session.getAttribute("gh");
				if(gh!=null) {
					hoadonbo hdbo = new hoadonbo();
					// them 1 hoadon moi vao database 
					// (hoadondao)
					hdbo.Them(kh.getMakhachhang());
					long mahd = hdbo.getMaxHD();
					chitietbo ctbo = new chitietbo();
					for(giohangbean g: gh.ds) {
						// them vao chitiethoadon
						// chitietdao
						ctbo.Them(g.getMasanpham(), g.getSoluongmua(), mahd);
						// Cap nhat lai so luong hang co san
						ctbo.CapNhatSLM(g.getSoluongmua(), g.getMasanpham());
					}
					
					session.removeAttribute("gh");
					
				}
				response.sendRedirect("giohangcontroller?c=2");
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
