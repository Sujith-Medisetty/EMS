package com.sal.dto;



public class AllUserDetails {
private String username;
private String useremail;
private String usermobile;
private String userpassword;
private String status;
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
public String getUsermobile() {
	return usermobile;
}
public void setUsermobile(String usermobile) {
	this.usermobile = usermobile;
}
public String getUserpassword() {
	return userpassword;
}
public void setUserpassword(String userpassword) {
	this.userpassword = userpassword;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
@Override
public String toString() {
	return "AllUserDetails [username=" + username + ", useremail=" + useremail + ", usermobile=" + usermobile
			+ ", userpassword=" + userpassword + ", status=" + status + "]";
}


}
