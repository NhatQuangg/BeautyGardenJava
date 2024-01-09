package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import bean.loaibean;
import bean.sanphambean;
import bo.loaibo;
import bo.sanphambo;

/**
 * Servlet implementation class ctspcontroller
 */
public class ctspcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctspcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String msp = request.getParameter("msp");
			
			// lay ra all sanpham
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> dssp = spbo.getsanpham();
			// lay ra all loai
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsloai = lbo.getloai();
			
			if(msp != null) {
				// tìm masanpham neu co thi in ra ds san pham
				dssp = spbo.TimMSP(msp);
			}
			request.setAttribute("dssp", dssp);
			request.setAttribute("dsloai", dsloai);
			
            RequestDispatcher rd = request.getRequestDispatcher("chitietsanpham.jsp");
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
