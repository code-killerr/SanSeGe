package com.sansege.enuity;

public class UserEntity {
	private int useId;
	private String userName;
	private String userPassword;
	private String userHeadpic;
	private String userIntroduce;
	private String userPhone;
	private String userEmail;
	public UserEntity() {
		super();
	}
	
	public UserEntity(int useId,String userName,String userPassword,String userHeadpic,String userIntroduce,String userPhone){
		this.useId = useId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userHeadpic = userHeadpic;
		this.userIntroduce = userIntroduce;
		this.userPhone = userPhone;
	}
	public int getUseId() {
		return useId;
	}
	public void setUseId(int useId) {
		this.useId = useId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserHeadpic() {
		return userHeadpic;
	}
	public void setUserHeadpic(String userHeadpic) {
		this.userHeadpic = userHeadpic;
	}
	public String getUserIntroduce() {
		return userIntroduce;
	}
	public void setUserIntroduce(String userIntroduce) {
		this.userIntroduce = userIntroduce;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
}
