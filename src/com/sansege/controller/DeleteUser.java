package com.sansege.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteUser() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid = Integer.parseInt(request.getParameter("userid"));
		LoginSqlControl con;
		try {
			con = new LoginSqlControl();
			int i = con.deleteUser(userid);
			if(i > 0){
				response.sendRedirect("SelectAll");
			}else{
				response.sendRedirect("sign.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
