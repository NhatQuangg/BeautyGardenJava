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
import bo.loaibo;

/**
 * Servlet implementation class adminloaicontroller
 */
public class adminloaicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminloaicontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			loaibo lbo = new loaibo();
			// lay maloai + tenloai ở trong input
			String maloai = request.getParameter("txtmaloai"); 
			String tenloai = request.getParameter("txttenloai");
			
			String tab = request.getParameter("tab");
			
			ArrayList<loaibean> ds = lbo.getloai();
			if(request.getParameter("butadd")!=null && maloai!="" && tenloai!="") {
				// nếu maloai đã tồn tại
				if(lbo.Tim(maloai)!=null) {
					request.setAttribute("dsloai", lbo.getloai());
					RequestDispatcher rd = request.getRequestDispatcher("adminloai.jsp?kt=1");
					rd.forward(request, response);
				}
				else {
					lbo.ThemLoai(maloai, tenloai);	
					request.setAttribute("dsloai", lbo.getloai());
					RequestDispatcher rd = request.getRequestDispatcher("adminloai.jsp?kt=2");
					rd.forward(request, response);
				}
			}
			else
				if(request.getParameter("butupdate")!=null && tenloai!="") {
					lbo.SuaLoai(maloai, tenloai); 
				}
			else {
				// lay ml + tl ở trong bảng
				String ml = request.getParameter("ml"); 
				String tl = request.getParameter("tl"); 
				
				if(tab!=null && tab.equals("xoa"))
					lbo.XoaLoai(ml); 
				else
					if(tab!=null && tab.equals("chon")) {
						request.setAttribute("ml", ml); 
						request.setAttribute("tl", tl);
						//request.setAttribute("tenloai", lbo.ThemLoai(ml, tenloai));
					}				
			}

			request.setAttribute("dsloai", lbo.getloai());
			RequestDispatcher rd = request.getRequestDispatcher("adminloai.jsp");
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
