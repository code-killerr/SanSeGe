package com.sansege.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;
import com.sansege.enuity.UserEntity;
@WebServlet("/SelectAll")
public class SelectAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SelectAll() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			LoginSqlControl con = new LoginSqlControl();
			List<UserEntity> list = con.Select();
			if(list.size()>0) {
				request.getSession().setAttribute("list", list);
				response.sendRedirect("admin.jsp");
			}else {
				response.sendRedirect("sign.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
