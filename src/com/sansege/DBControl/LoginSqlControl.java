package com.sansege.DBControl;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sansege.enuity.*;
public class LoginSqlControl {
	DBHelper help;//���ݿ�����
	public LoginSqlControl() throws Exception{
		help = new DBHelper("sansege","root","root");
	}
	//ע���û���Ϣ
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
				System.out.print("��ֵ����");
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
	//(��ѯ�û���Ϣ)
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
					System.out.print("��ֵ����");
					return null;
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return null ;
		}
		
		//�޸��û���Ϣ
		public int update(UserEntity userEnity) throws SQLException {
			String sql = "UPDATE userdata SET username = ?,userpassword = ?,userheadpic = ?,userintroduce = ?,userphone = ?,useremail = ? WHERE userid = ?;";
			Object[] values = {userEnity.getUserName(),userEnity.getUserPassword(),userEnity.getUserHeadpic(),userEnity.getUserIntroduce(),userEnity.getUserPhone(),userEnity.getUserEmail(),userEnity.getUseId()};
			return noSelectSql(sql,values);
		}
		//����ظ�(ע��ר��)
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
		
		//����ظ�(ͨ��)
		public boolean checkReapt(Object cloumName,Object value) throws SQLException {//��ѯ�ظ�����һ��ֵΪ������Ŀ���ڶ���Ϊ���ҵ�ֵ
			String sql ="SELECT userid from userdata where "+cloumName+" = ?";
			
			Object[] values = {value};
			ResultSet rs = selectSql(sql,values);
			if(rs.next()) {
				return true;//��Ϣ�ظ�
			}
			else return false;//��Ϣδ�ظ�
		}
		
		//��select����б�
		private int noSelectSql(String sql,Object[] values) throws SQLException {
			String[] check = sql.split(" ");
			if(check[0] != null&&!(check[0].equals("select")||check[0].equals("SELECT"))) {
				int i = help.update(sql, values);
				return i;
			}
			else
				System.out.print("select��䲻�账��");
			return 0;
		}
		
		//select������
		private ResultSet selectSql(String sql,Object[] values) throws SQLException {
			String[] check = sql.split(" ");
			if(check[0] != null&&(check[0].equals("select")||check[0].equals("SELECT")))	
			{	
				ResultSet rs = help.search(sql, values);
				return rs;
			}else
				System.out.print("��select��䲻�账��");
			return null;
		}
		//admin�û���̨��ѯ
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
		//�û�ע��
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
		//��ʾ�ղ�(����)
		public List<MusicEntity> User_Favorite_Music(int userId) throws SQLException {
			String sql = "Select m_no from user_favorite_music where userid = ?";
			Object[] objects = {userId};
			ResultSet rs1 = help.search(sql, objects);
			List<MusicEntity> music = new ArrayList<MusicEntity>();
			while(rs1.next()) {
				sql = "Select * from music where m_no = ?";
				
				Object[] objects1 = {rs1.getInt(1)};
				ResultSet rs = help.search(sql, objects1);
				while(rs.next()) {
					MusicEntity entity = new MusicEntity();
					entity.setno(rs.getInt("m_no"));
					entity.setname(rs.getString("m_name"));
					entity.setsinger(rs.getString("m_singer"));
					entity.setlyricist(rs.getString("m_lyricist"));
					entity.setcomposer(rs.getString("m_composer"));
					entity.setalbum(rs.getString("m_album"));
					entity.setcover(rs.getString("m_cover"));
					music.add(entity);
				}
			}
			
			return music;
			
		}
		//��ʾ�ղ�(��Ӱ)
		public List<FilmEntity> User_Favorite_Film(int userId) throws SQLException{
			String sql = "Select f_id from user_favorite_film where userid = ?";
			Object[] objects = {userId};
			ResultSet rs1 = help.search(sql, objects);
			List<FilmEntity> film = new ArrayList<FilmEntity>();
			while(rs1.next()) {
				sql = "Select * from film where f_id = ?";
				Object[] objects1 = {rs1.getInt(1)};
				ResultSet rs = help.search(sql, objects1);
				while(rs.next()) {
					FilmEntity entity = new FilmEntity();
					entity.setF_id(rs.getInt("f_id"));
					entity.setF_name(rs.getString("f_name"));
					entity.setF_type(rs.getString("f_type"));
					entity.setF_poster(rs.getString("f_poster"));
					entity.setF_director(rs.getString("f_director"));
					entity.setF_star(rs.getString("f_star"));
					entity.setF_focus(rs.getString("f_focus"));
					entity.setF_time(rs.getString("f_time"));
					entity.setF_play(rs.getInt("f_play"));
					entity.setF_time(rs.getString("f_time"));
					entity.setF_intro(rs.getString("f_intro"));
					entity.setF_grade(rs.getDouble("f_grade"));
					entity.setF_good(rs.getInt("f_good"));
					entity.setF_bad(rs.getInt("f_bad"));
					film.add(entity);
				}
			}
			return film;
		}
		//��ʾ�ղ�(�鼮)
		public List<BookEntity> User_Favorite_Book(int userId) throws SQLException{
			String sql = "Select b_isbn from user_favorite_book where userid = ?";
			Object[] objects = {userId};
			ResultSet rs1 = help.search(sql, objects);
			List<BookEntity> bookl = new ArrayList<BookEntity>();
			while(rs1.next()) {
				sql = "Select * from book where b_isbn = ?";
				Object[] objects1 = {rs1.getString(1)};
				ResultSet rs = help.search(sql, objects1);
				while(rs.next()) {
					BookEntity book = new BookEntity();
					book.setB_isbn(rs.getString("b_isbn"));
					book.setB_auabstract(rs.getString("b_auabstract"));
					book.setB_author(rs.getString("b_author"));
					book.setB_coabstract(rs.getString("b_coabstract"));
					book.setB_cover(rs.getString("b_cover"));
					book.setB_name(rs.getString("b_name"));
					book.setB_publish(rs.getString("b_publish"));
					book.setB_score(rs.getDouble("b_score"));
					book.setB_year(rs.getString("b_year"));
					bookl.add(book);
				}
			}
			return bookl;
		}
		//�鼮��ʾ
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
		
		//��Ӱ��ʾ
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
		//����ղ�
		public int addBookFav(String favid,int userId) throws SQLException {
			String sql="INSERT INTO user_favorite_book (userid,b_isbn)VALUES (?,?) ";
			Object[] values= {userId,favid};
			int i = noSelectSql(sql,values);
			return i;
		}
		public int addMusicFav(int favid,int userId) throws SQLException {
			String sql="INSERT INTO user_favorite_music (userid,b_isbn)VALUES (?,?) ";
			Object[] values= {userId,favid};
			int i = noSelectSql(sql,values);
			return i;
		}
		public int addFilmFav(int favid,int userId) throws SQLException {
			String sql="INSERT INTO user_favorite_film (userid,b_isbn)VALUES (?,?) ";
			Object[] values= {userId,favid};
			int i = noSelectSql(sql,values);
			return i;
		}

}
