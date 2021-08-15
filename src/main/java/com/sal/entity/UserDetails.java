package com.sal.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserDetails {

	
	private String username;
	@Id
	private String useremail;
	private String userpassword;
	private String usermobile;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getUsermobile() {
		return usermobile;
	}

	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}

	@Override
	public String toString() {
		return "UserDetails [username=" + username + ", useremail=" + useremail + ", userpassword=" + userpassword
				+ ", usermobile=" + usermobile + "]";
	}
	
	

}
