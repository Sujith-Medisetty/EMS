package com.sal.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminDetails {
	
	private String adminname;
	@Id
	private String adminemail;
	private String adminpassword;
	private String adminmobile;
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminemail() {
		return adminemail;
	}
	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	public String getAdminmobile() {
		return adminmobile;
	}
	public void setAdminmobile(String adminmobile) {
		this.adminmobile = adminmobile;
	}
	@Override
	public String toString() {
		return "AdminDetails [adminname=" + adminname + ", adminemail=" + adminemail + ", adminpassword="
				+ adminpassword + ", adminmobile=" + adminmobile + "]";
	}
	
	
}
