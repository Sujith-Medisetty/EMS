package com.sal.dao;

import com.sal.entity.BookSlot;
import com.sal.entity.UserDetails;

public interface UserDao {
	
	// to search user in user details (with mail id and password)
	public int searchUserInUserDetails(UserDetails details);
	
	// to search user in book slot (with mail id)
	public int serachUserInBookSlot(UserDetails details);
	
	
	// to insert user in bookslot
	public int insertUserInBookSlot(BookSlot slot);
	
	// returns user details (with mail id)
	public UserDetails ReturnUser(UserDetails details);

	//to register user
	public int RegisterUser(UserDetails details);

	//to update user phone number (with mail id)
	public int userUpdatePhoneNumber(UserDetails details);
	
	//to update user password (with mail id)
	public int userUpdatePassword(UserDetails details);
	
	//helps user to apply job
	public int userApplyJob(BookSlot slot);


}
