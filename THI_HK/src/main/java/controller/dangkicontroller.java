package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangkicontroller
 */
public class dangkicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkicontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String hotenkh = request.getParameter("txtname");
			String diachikh = request.getParameter("txtad");
			String sodienthoaikh = request.getParameter("txtphone");
			String emailkh = request.getParameter("txtemail");
			String tendangnhapkh = request.getParameter("txtun");
			String matkhaukh = request.getParameter("txtpass");
			
			if(hotenkh==null && diachikh==null && sodienthoaikh==null && emailkh==null && tendangnhapkh==null && matkhaukh==null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangki.jsp");
				rd.forward(request, response);
			}
			else {
				khachhangbo khbo = new khachhangbo();
				khachhangbean kh = khbo.ktdk(tendangnhapkh);
				if(kh==null) {
					khbo.dki(hotenkh, diachikh, sodienthoaikh, emailkh, tendangnhapkh, matkhaukh);
					RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
					rd.forward(request, response);	
				}
				else {
					// neu tendangnhap da ton tai
					RequestDispatcher rd = request.getRequestDispatcher("dangki.jsp?dk=1");
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
