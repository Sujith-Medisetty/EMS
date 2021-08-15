package com.sal.dao;

import java.util.List;

import com.sal.dto.AllUserDetails;
import com.sal.entity.AdminDetails;

public interface AdminDao {
	
	// search admin in admin details
	public int searchAdminInAdminDetails(AdminDetails details);

	// returns admin details
	public AdminDetails ReturnAdmin(AdminDetails details);

	// to update admin phone number
	public int adminUpdatePhoneNumber(AdminDetails details);

	//to update admin password
	public int adminUpdatePassword(AdminDetails details);

	// to return all users who are registered
	public List<AllUserDetails> getAllUsers();
}
