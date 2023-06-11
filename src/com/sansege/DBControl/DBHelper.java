package com.sansege.DBControl;
import java.sql.*;

public class DBHelper {
	private Connection conn;
	DBHelper(String DBname,String userName,String userSec) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");//ע������
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+DBname,userName,userSec);
	}
	
	private PreparedStatement execute(String sql,Object[] values) throws SQLException {
		PreparedStatement stat = conn.prepareStatement(sql);//ʵ����Statment
		for(int i =0;i<values.length;i++) {
			stat.setObject(i+1, values[i]);
		}
			
		return stat;
	}
	
	public int update(String sql,Object[] values) throws SQLException {
		
			PreparedStatement stat = execute(sql,values);
			
			return stat.executeUpdate();
	}
	
	public ResultSet search(String sql,Object[] values) throws SQLException {
		PreparedStatement stat = execute(sql,values);
		ResultSet rs = stat.executeQuery();
		return rs;
	}
}
