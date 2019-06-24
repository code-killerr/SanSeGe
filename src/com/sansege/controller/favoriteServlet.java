package com.sansege.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;

/**
 * Servlet implementation class favoriteServlet
 */
@WebServlet("/favoriteServlet")
public class favoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public favoriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//接收4个参数，收藏类型，收藏id,用户id,页面id
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		int userId = Integer.parseInt(String.valueOf(request.getSession().getAttribute("usid")));
		
		String url = request.getHeader("Referer");
		int i = 0;
		if("book".equals(type)) {
			String favId = request.getSession().getAttribute("favid").toString();
			try {
				LoginSqlControl control = new LoginSqlControl();
				i =control.addBookFav(favId, userId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if("film".equals(type)){
			int favId = Integer.parseInt(String.valueOf(request.getSession().getAttribute("favid")));
			try {
				LoginSqlControl control = new LoginSqlControl();
				i =control.addFilmFav(favId, userId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if("music".equals(type)) {
			int favId = Integer.parseInt(String.valueOf(request.getSession().getAttribute("favid")));
			try {
				LoginSqlControl control = new LoginSqlControl();
				i =control.addMusicFav(favId, userId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		request.getSession().removeAttribute("usid");
		request.getSession().removeAttribute("type");
		if(i>0)
			response.sendRedirect(url+"&favmsg=1");
		else response.sendRedirect(url+"&favmsg=2");
	}

}
