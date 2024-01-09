package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.Out;

import bean.loaibean;
import bean.sanphambean;
import bo.loaibo;
import bo.sanphambo;

/**
 * Servlet implementation class trangchucontroller
 */
public class trangchucontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchucontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> dssanpham = spbo.getsanpham();
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsloai = lbo.getloai();
			
			// tim kiem
			String ml = request.getParameter("ml");
			String key = request.getParameter("txttim");
			if(ml!=null) { // chon ten loai
				dssanpham = spbo.TimMa(ml);
			}
			else
				if(key!=null) {	// tim kiem
					dssanpham = spbo.Tim(key);
				}
			
			request.setAttribute("dssanpham", dssanpham);
			request.setAttribute("dsloai", dsloai);
			
			RequestDispatcher rd = request.getRequestDispatcher("trangchu.jsp");
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
