package com.sansege.enuity;

public class BookEntity {
	private String b_isbn;
	private String b_name;
	private String b_author;
	private String b_coabstract;
	private String b_auabstract;
	private String b_publish;
	private String b_year;
	private String b_cover;
	private double b_score;
	public BookEntity() {
		super();
	}
	public BookEntity(String b_isbn, String b_name, String b_author, String b_coabstract, String b_auabstract,
			String b_publish, String b_year, String b_cover, double b_score) {
		super();
		this.b_isbn = b_isbn;
		this.b_name = b_name;
		this.b_author = b_author;
		this.b_coabstract = b_coabstract;
		this.b_auabstract = b_auabstract;
		this.b_publish = b_publish;
		this.b_year = b_year;
		this.b_cover = b_cover;
		this.b_score = b_score;
	}
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_coabstract() {
		return b_coabstract;
	}
	public void setB_coabstract(String b_coabstract) {
		this.b_coabstract = b_coabstract;
	}
	public String getB_auabstract() {
		return b_auabstract;
	}
	public void setB_auabstract(String b_auabstract) {
		this.b_auabstract = b_auabstract;
	}
	public String getB_publish() {
		return b_publish;
	}
	public void setB_publish(String b_publish) {
		this.b_publish = b_publish;
	}
	public String getB_year() {
		return b_year;
	}
	public void setB_year(String b_year) {
		this.b_year = b_year;
	}
	public String getB_cover() {
		return b_cover;
	}
	public void setB_cover(String b_cover) {
		this.b_cover = b_cover;
	}
	public double getB_score() {
		return b_score;
	}
	public void setB_score(double b_score) {
		this.b_score = b_score;
	}
	
}
