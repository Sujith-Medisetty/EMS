package com.sal.dao.impl;

import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.sal.entity.BookSlot;
import com.sal.entity.UserDetails;

public class UserDaoImplTest {

	private UserDaoImpl dao;
	@Before
	public void setUp() throws Exception {
		dao=new UserDaoImpl();
	}

	@After
	public void tearDown() throws Exception {
		dao=null;
	}

	@Test
	public void testSearchUserInUserDetails() {
		UserDetails details=new UserDetails();
		details.setUseremail("chandu@gmail.com");
		details.setUserpassword("chandu");
		
		int a=dao.searchUserInUserDetails(details);
		assert a>0:"No user Present";
	}

	@Test
	public void testSerachUserInBookSlot() {
		UserDetails details=new UserDetails();
		details.setUseremail("chandu@gmail.com");
		details.setUserpassword("chandu");
		
		int a=dao.serachUserInBookSlot(details);
		assert a>0:"No user Present";
	}

	@Test
	public void testUserUpdatePhoneNumber() {
		UserDetails details=new UserDetails();
		details.setUseremail("chandu@gmail.com");
		details.setUsermobile("8908908908");
		
		int a=dao.userUpdatePhoneNumber(details);
		assert a>0:"phone number update failed";
	}

	@Test
	public void testUserUpdatePassword() {
		UserDetails details=new UserDetails();
		details.setUseremail("chandu@gmail.com");
		details.setUserpassword("chandu");
		
		int a=dao.userUpdatePassword(details);
		assert a>0:"password update failed";
	}


}
