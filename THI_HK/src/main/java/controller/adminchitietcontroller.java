package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import bean.sanphambean;
import bo.sanphambo;

/**
 * Servlet implementation class adminchitietcontroller
 */
public class adminchitietcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminchitietcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String masanpham = request.getParameter("msp");
			
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> dssanpham = spbo.getsanpham();
            
			if(masanpham !=null) {
            	dssanpham = spbo.TimMSP(masanpham);
            }

			request.setAttribute("dssanpham", dssanpham);
            
            RequestDispatcher rd = request.getRequestDispatcher("adminchitiet.jsp");
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
