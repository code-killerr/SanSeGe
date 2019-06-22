package com.sansege.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sansege.DBControl.LoginSqlControl;
import com.sansege.enuity.UserEntity;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		LoginSqlControl con;
		//2����ȡ������
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String userPhone = request.getParameter("phone");
		String introduce = request.getParameter("introduce");
		String check = request.getParameter("password1");
		String userEmail = request.getParameter("email");
		//У�������
		if(userPhone != ""&&!userPhone.matches("^1(3|4|5|7|8)\\d{9}$")){
			
				response.sendRedirect("user_de.jsp?error=1");
				return;
		}
		if(userEmail != ""&&!userEmail.matches(".*@.*.com$")) {
			response.sendRedirect("user_de.jsp?error=2");
			return;
		}
		if(passWord != ""&&(passWord.length()<6||passWord.length()>16)) {
			response.sendRedirect("user_de.jsp?error=3");
			return;
		}
		if(passWord != ""&&!check.equals(passWord)) {
			response.sendRedirect("user_de.jsp?error=4");
			return;
		}
		
		if(userName != ""&&userName.length()>16) {
			response.sendRedirect("user_de.jsp?error=5");
			return;
		}
		UserEntity userEntity = (UserEntity)request.getSession().getAttribute("userDate");//��ȡ��ǰ�û�����
		if(userEntity == null) {
			response.sendRedirect("user_de.jsp?error=11");
			return;
		}
		try {
			if(checkReapt(userEntity.getUserName(),userName,"username")) {
				response.sendRedirect("user_de.jsp?error=6");
				return;
			}
			else if(checkReapt(userEntity.getUserEmail(),userEmail,"useremail")) {
				response.sendRedirect("user_de.jsp?error=7");
				return;
			}
			else if(checkReapt(userEntity.getUserPhone(),userPhone,"userphone")){
				response.sendRedirect("user_de.jsp?error=8");
				return;
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//3����װ����
		if(userName != "")
			userEntity.setUserName(userName);
		if(passWord != "")
			userEntity.setUserPassword(passWord);
		if(introduce != "")
			userEntity.setUserIntroduce(introduce);
		if(userPhone != "")
			userEntity.setUserPhone(userPhone);
		if(userEmail != "")
			userEntity.setUserEmail(userEmail);
		//4���������ݸ��·���
		
		try {
			con = new LoginSqlControl();				
			int i = con.update(userEntity);
			//5�������ؽ��
			if(i > 0){
				//����ת��
				request.getSession().setAttribute("userDate", userEntity);
				response.sendRedirect("user_de.jsp?error=10");
			}else{
				response.sendRedirect("user_de.jsp?error=9");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//�ظ����
	private boolean checkReapt(Object cloumValue,Object checkValue,String cloumName) throws Exception {
		LoginSqlControl con = new LoginSqlControl();
		if(checkValue == "")//�޸���ϢΪ��
			return false;//��ϢΪ�գ�����
		else if(checkValue.equals(cloumValue))//�޸���Ϣ��֮ǰһ��
			return false;//��Ϣ��֮ǰһ�£�����
		else return con.checkReapt(cloumName, checkValue);//���ݿ������Ϣ�Ƿ����
	}

}
