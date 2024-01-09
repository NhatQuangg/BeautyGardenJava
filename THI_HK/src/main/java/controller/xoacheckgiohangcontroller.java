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
 * Servlet implementation class xoacheckgiohangcontroller
 */
public class xoacheckgiohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoacheckgiohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			giohangbo g = (giohangbo)session.getAttribute("gh");
			// dua vao mag co tham so "xcb"
			String a[] = request.getParameterValues("xcb");
			if(a!=null && a.length!=0) {
				int n = a.length;
				for(int i=0; i<n; i++) {
					g.XoaHang(a[i]);
				}
			}
			session.setAttribute("gh", g);
			response.sendRedirect("giohangcontroller");
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
