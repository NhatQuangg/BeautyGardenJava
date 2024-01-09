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
 * Servlet implementation class suamatkhaukhachhangcontroller
 */
public class suamatkhaukhachhangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suamatkhaukhachhangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String pass = request.getParameter("txtpass");
			String newpass = request.getParameter("txtnewpass");
			String renewpass = request.getParameter("txtrenewpass");
			
			if(pass!=null && newpass!=null && renewpass!=null && pass!="" && newpass!="" && renewpass!="") {
				HttpSession session = request.getSession();
				khachhangbean kh = (khachhangbean)session.getAttribute("dn");
				khachhangbo khbo = new khachhangbo();
				
				// mật khẩu hiện tại khác mật khẩu trong csdl
				if(pass.equals(kh.getMatkhaukh())==false) {
					RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?p=1");
					rd.forward(request, response);			
				}
				else {
					// mật khẩu hiện tại = mật khẩu mới
					if(pass.equals(newpass)==true) {
						RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?p=2");
						rd.forward(request, response);	
					}
					else {
						// mật khẩu mới != mật khẩu nhập lại
						if(newpass.equals(renewpass)==false) {
							RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?p=3");
							rd.forward(request, response);
						}
						else {
							khbo.SuaMK(kh.getMakhachhang(), newpass);
							RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?p=4");
							rd.forward(request, response);
						}
					}					
				}
		
			}
			else {
				// Mật khẩu để trống
				RequestDispatcher rd = request.getRequestDispatcher("profile.jsp?p=5");
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
