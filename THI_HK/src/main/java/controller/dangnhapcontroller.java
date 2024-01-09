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
 * Servlet implementation class dangnhapcontroller
 */
public class dangnhapcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// lay tdn va mk ve
			String tdn = request.getParameter("txttdn");
			String mk = request.getParameter("txtmk");
			
			khachhangbo khbo = new khachhangbo();
			if(tdn==null && mk==null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);				
			}
			else {
				khachhangbean kh = khbo.ktdn(tdn, mk);
				if(kh!=null) {
					HttpSession session = request.getSession();
					// thong tin dang nhap duoc set vao "dn" cua session
					session.setAttribute("dn", kh);
					response.sendRedirect("trangchucontroller");
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp?kt=1");
					rd.forward(request, response);							
				}
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
