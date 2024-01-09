package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class suakhachhangcontroller
 */
public class suakhachhangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suakhachhangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String hoten = request.getParameter("txtht");
			String diachi = request.getParameter("txtdc");
			String sdt = request.getParameter("txtsdt");
			String email = request.getParameter("txtemail");
			
			HttpSession session = request.getSession();
			khachhangbean kh = (khachhangbean)session.getAttribute("dn");
			khachhangbo khbo = new khachhangbo();
			
			if(hoten!=null && diachi!=null &&  sdt!=null && email!=null && hoten!="" && diachi!="" &&  sdt!="" && email!="") {
				khbo.SuaKH(kh.getMakhachhang() , hoten, diachi, sdt, email);												
				khachhangbean khb = khbo.ktdn(kh.getTendangnhapkh(), kh.getMatkhaukh());
				session.setAttribute("dn", khb);
				RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?q=2");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?q=1");
				rd.forward(request, response);
			}
			RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
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
