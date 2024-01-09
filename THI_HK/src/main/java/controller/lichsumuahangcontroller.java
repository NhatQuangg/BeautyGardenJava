package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import bean.khachhangbean;
import bean.lichsumuahangbean;
import bo.lichsumuahangbo;
import bo.loaibo;

/**
 * Servlet implementation class lichsumuahangcontroller
 */
public class lichsumuahangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsumuahangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			// lay danh sach loai ra
			//loaibo lbo = new loaibo();
			//request.setAttribute("dsloai", lbo.getloai());
			
			HttpSession session = request.getSession();
			khachhangbean kh = (khachhangbean)session.getAttribute("dn");
			if(kh==null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhapcontroller");
				rd.forward(request, response);			
			}
			else {
				lichsumuahangbo lsbo = new lichsumuahangbo();
				ArrayList<lichsumuahangbean> dsls = lsbo.getlichsumuahang(kh.getMakhachhang());
				request.setAttribute("dsls", dsls);
				RequestDispatcher rd = request.getRequestDispatcher("lichsumuahang.jsp");
				rd.forward(request, response);
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
