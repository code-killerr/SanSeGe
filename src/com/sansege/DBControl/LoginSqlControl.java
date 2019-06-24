package com.sansege.DBControl;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sansege.enuity.*;
public class LoginSqlControl {
	DBHelper help;//数据库连接
	public LoginSqlControl() throws Exception{
		help = new DBHelper("sansege","root","root");
	}
	//注册用户信息
	public int save(UserEntity userEnity) {
		try {
			int i = 0;
			if(userEnity.getUserPhone()!=null) {
				
				Object[] values = {userEnity.getUserName(),userEnity.getUserPassword(),userEnity.getUserPhone()};
				String sql = "INSERT INTO userdata (username,userpassword,userphone)VALUES (?,?,?)";
				i = noSelectSql(sql,values);
				
			}else if(userEnity.getUserEmail()!=null){
				
				Object[] values = {userEnity.getUserName(),userEnity.getUserPassword(),userEnity.getUserEmail()};
				String sql = "INSERT INTO userdata (username,userpassword,useremail)VALUES (?,?,?)";
				i =  noSelectSql(sql,values);
			}
			else {
				System.out.print("传值错误");
				return 0;
			}
			
			if(i>0) {
				String sql = "SELECT userid FROM userdata WHERE username = ?;";
				Object[] value = {userEnity.getUserName()};
				ResultSet rs= selectSql(sql,value);
				rs.next();
				return rs.getInt(1);
			}
			else return 0;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0 ;
		
	}
	//(查询用户信息)
	public UserEntity check(UserEntity userEnity) {
		try {
				ResultSet rs = null;
				if(userEnity.getUserPhone()!=null) {
					Object[] values = {userEnity.getUserPhone(),userEnity.getUserPassword()};
					String sql = "SELECT * from userdata where userphone = ? and userpassword = ?";
					rs= selectSql(sql,values);
					
				}else if(userEnity.getUserEmail()!=null){
					Object[] values = {userEnity.getUserEmail(),userEnity.getUserPassword()};
					String sql = "SELECT * from userdata where useremail = ? and userpassword = ?";
					rs= selectSql(sql,values);
					}
				if(rs.next()) {
					userEnity.setUseId(rs.getInt("userid"));
					userEnity.setUserName(rs.getString("username"));
					userEnity.setUserHeadpic(rs.getString("userheadpic"));
					userEnity.setUserIntroduce(rs.getString("userintroduce"));
					userEnity.setUserEmail(rs.getString("useremail"));
					userEnity.setUserPhone(rs.getString("userphone"));
					return userEnity;
				}
				else {
					System.out.print("传值错误");
					return null;
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return null ;
		}
		
		//修改用户信息
		public int update(UserEntity userEnity) throws SQLException {
			String sql = "UPDATE userdata SET username = ?,userpassword = ?,userheadpic = ?,userintroduce = ?,userphone = ?,useremail = ? WHERE userid = ?;";
			Object[] values = {userEnity.getUserName(),userEnity.getUserPassword(),userEnity.getUserHeadpic(),userEnity.getUserIntroduce(),userEnity.getUserPhone(),userEnity.getUserEmail(),userEnity.getUseId()};
			return noSelectSql(sql,values);
		}
		//检查重复(注册专用)
		public boolean checkRegistReapt(UserEntity userEnity) throws SQLException {
			
			if(userEnity.getUserPhone()!=null) {
				String sql = "SELECT userid from userdata where username = ? or userphone = ?";
				Object[] values = {userEnity.getUserName(),userEnity.getUserPhone()};
				ResultSet rs = selectSql(sql,values);
				if(rs.next()) return true;
				else return false;
			}
			else if(userEnity.getUserEmail()!=null) {
				String sql = "SELECT userid from userdata where username = ? or useremail = ?";
				Object[] values = {userEnity.getUserName(),userEnity.getUserPhone()};
				ResultSet rs = selectSql(sql,values);
				if(rs.next()) return true;
				else return false;
			}
				return true;
		}
		
		//检查重复(通用)
		public boolean checkReapt(Object cloumName,Object value) throws SQLException {//查询重复，第一个值为查找项目，第二个为查找的值
			String sql ="SELECT userid from userdata where "+cloumName+" = ?";
			
			Object[] values = {value};
			ResultSet rs = selectSql(sql,values);
			if(rs.next()) {
				return true;//信息重复
			}
			else return false;//信息未重复
		}
		
		//非select语句判别
		private int noSelectSql(String sql,Object[] values) throws SQLException {
			String[] check = sql.split(" ");
			if(check[0] != null&&!(check[0].equals("select")||check[0].equals("SELECT"))) {
				int i = help.update(sql, values);
				return i;
			}
			else
				System.out.print("select语句不予处理");
			return 0;
		}
		
		//select语句接收
		private ResultSet selectSql(String sql,Object[] values) throws SQLException {
			String[] check = sql.split(" ");
			if(check[0] != null&&(check[0].equals("select")||check[0].equals("SELECT")))	
			{	
				ResultSet rs = help.search(sql, values);
				return rs;
			}else
				System.out.print("非select语句不予处理");
			return null;
		}
		public List<UserEntity> Select() {
			List<UserEntity> list = new ArrayList<UserEntity>();
			String sql = "SELECT * FROM userdata;";
			Object[] values = {};
			try {
				ResultSet rs = help.search(sql, values);
				while(rs.next()) {
					UserEntity entity = new UserEntity();
					entity.setUseId(rs.getInt("userid"));
					entity.setUserName(rs.getString("userName"));
					entity.setUserPassword(rs.getString("userPassword"));
					entity.setUserHeadpic(rs.getString("userHeadpic"));
					entity.setUserIntroduce(rs.getString("userIntroduce"));
					entity.setUserPhone(rs.getString("userPhone"));
					entity.setUserEmail(rs.getString("userEmail"));
					list.add(entity);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		public int deleteUser(int userid) {
			int i = 0;
			String sql = "DELETE FROM userdata WHERE userid = ?";
			Object[] values = {userid};
			try {
				i = help.update(sql, values);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return i;
		}
		
		public ArrayList<BookEntity> selectAllBook(){
			
			ArrayList<BookEntity> list =new ArrayList<BookEntity>();
			ResultSet rs=null;
			BookEntity book=null;
			String sql="select * from book";
			Object[] values= {};
			try {
				rs=help.search(sql, values);
				while(rs.next()) {
					book = new BookEntity();
					book.setB_isbn(rs.getString("b_isbn"));
					book.setB_auabstract(rs.getString("b_auabstract"));
					book.setB_author(rs.getString("b_author"));
					book.setB_coabstract(rs.getString("b_coabstract"));
					book.setB_cover(rs.getString("b_cover"));
					book.setB_name(rs.getString("b_name"));
					book.setB_publish(rs.getString("b_publish"));
					book.setB_score(rs.getDouble("b_score"));
					book.setB_year(rs.getString("b_year"));
					
					list.add(book);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
			
		}
		public ArrayList<FilmEntity> queryfilm(){
			ArrayList<FilmEntity> list=new ArrayList<FilmEntity>();
			ResultSet rs=null;
			FilmEntity film=null;
			String sql="SELECT * FROM film";
			Object[] values= {};
			try {
				rs=help.search(sql, values);
				while(rs.next()) {
					film =new FilmEntity();
					film.setF_name(rs.getString("f_name"));
					film.setF_focus(rs.getString("f_focus"));
					film.setF_grade(rs.getDouble("f_grade"));
					film.setF_poster(rs.getString("f_poster"));
					list.add(film);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}

}
