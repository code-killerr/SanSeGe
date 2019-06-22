package com.sansege.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistServlet
 */
import com.sansege.enuity.*;
import com.sansege.DBControl.*;
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistServlet() {
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
		//1、设置字符编码
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				String userEmail = null;
				//2、获取表单数据
				String userName = request.getParameter("username");
				String passWord = request.getParameter("password");
				String userPhone = request.getParameter("phone");
				String check = request.getParameter("password1");
				//校验表单数据
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
				if(!check.equals(passWord)) {
					response.sendRedirect("sign.jsp?error=2");
					return;
				}
				
				
				if(userName.length()>16||userName == null) {
					response.sendRedirect("sign.jsp?error=4");
					return;
				}
				//3、封装数据
				UserEntity userEntity = new UserEntity();
				userEntity.setUserName(userName);
				userEntity.setUserPassword(passWord);
				if(userPhone!=null)
					userEntity.setUserPhone(userPhone);
				else userEntity.setUserEmail(userEmail);
				//4、调用注册方法
				LoginSqlControl con;
				try {
					con = new LoginSqlControl();
					if(con.checkRegistReapt(userEntity)) {
						response.sendRedirect("sign.jsp?error=8");return;
					}//登录名存在
					int i = con.save(userEntity);
					//5、处理返回结果
					if(i > 0){
						//请求转发
						userEntity.setUseId(i);
						request.getSession().setAttribute("userDate", userEntity);
						request.getRequestDispatcher("index.jsp").forward(request, response);
					}else{
						response.sendRedirect("sign.jsp?error=5");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
	}

}
