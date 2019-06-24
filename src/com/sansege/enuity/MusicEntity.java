package com.sansege.enuity;

public class MusicEntity {
	private int m_no;
	public void setno(int no) {
		this.m_no=no;
	}
	public int getno() {
		return m_no;
	}
	private String m_name;
	public void setname(String name) {
		this.m_name=name;
	}
	public String getname() {
		return m_name;
	}
	private String m_singer;
	public void setsinger(String singer) {
		this.m_singer=singer;
	}
	public String getsinger() {
		return m_singer;
	}
	private String m_lyricist;
	public void setlyricist(String lyricist) {
		this.m_lyricist=lyricist;
	}
	public String getlyricist() {
		return m_lyricist;
	}
	private String m_composer ;
	public void setcomposer(String composer) {
		this.m_composer =composer;
	}
	public String getcomposer() {
		return m_composer ;
	}
	private String m_album ;
	public void setalbum(String album) {
		this.m_album =album;
	}
	public String getalbum() {
		return m_album ;
	}
	private String m_cover;
	public void setcover(String cover) {
		this.m_cover=cover;
	}
	public String getcover() {
		return m_cover;
	}
}
