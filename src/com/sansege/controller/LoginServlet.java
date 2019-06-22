package com.sansege.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;
import com.sansege.enuity.UserEntity;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String userEmail = null;
		//2、获取表单数据
		String userPhone = request.getParameter("userphone");
		String passWord = request.getParameter("password");
		//数据监测
		if(!userPhone.matches("^1(3|4|5|7|8)\\d{9}$")){
			if(userPhone.matches(".*@.*.com$")) {
				userEmail = userPhone;
				userPhone = null;
			}
			else {
				response.sendRedirect("sign.jsp?error=1");
				return;
			}
		}
		if(passWord.length()<6||passWord.length()>16) {
			response.sendRedirect("sign.jsp?error=3");
			return;
		}
		//数据封装
		UserEntity userEnity = new UserEntity();
		userEnity.setUserPassword(passWord);
		if(userPhone!=null)
			userEnity.setUserPhone(userPhone);
		else userEnity.setUserEmail(userEmail);
		
		//检查登录数据
		try {
			LoginSqlControl con = new LoginSqlControl();
			
			UserEntity userDate = con.check(userEnity);
			if(userDate == null) {response.sendRedirect("sign.jsp?error=6");return;}
			else {
				if("admin".equals(userDate.getUserName())){
					request.getSession().setAttribute("userDate", userDate);
					request.getRequestDispatcher("admin.jsp").forward(request, response);
					
				}else {
				request.getSession().setAttribute("userDate", userDate);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
