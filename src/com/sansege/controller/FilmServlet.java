package com.sansege.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sansege.DBControl.LoginSqlControl;
import com.sansege.enuity.FilmEntity;

@WebServlet("/FilmServlet")
public class FilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FilmServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FilmEntity> list= null;
		try {
			LoginSqlControl dao = new LoginSqlControl();
			list =dao.queryfilm();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(list!=null) {
			request.getSession().setAttribute("film", list);
		}
		response.sendRedirect("mfirst.jsp");
	}
}
