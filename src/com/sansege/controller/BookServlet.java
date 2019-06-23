package com.sansege.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;
import com.sansege.enuity.BookEntity;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<BookEntity> list =null;
		try {
			LoginSqlControl dao = new LoginSqlControl();
			
			list = dao.selectAllBook();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(list!=null) {
			request.getSession().setAttribute("book", list);
		}
		response.sendRedirect("noval.jsp");
	}

}
