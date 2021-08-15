package com.sal.dao.impl;

import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.sal.entity.AdminDetails;

public class AdminDaoImplTest {

	private AdminDaoImpl dao;
	@Before
	public void setUp() throws Exception {
		dao=new AdminDaoImpl();
	}

	@After
	public void tearDown() throws Exception {
		dao=null;
	}

	@Test
	public void testSearchAdminInAdminDetails() {
		AdminDetails details=new AdminDetails();
		details.setAdminemail("abhishek@gmail.com");
		details.setAdminpassword("abhishek");
		
		int a=dao.searchAdminInAdminDetails(details);
		assert a>0:"No admin with this name found";
	}

	@Test
	public void testAdminUpdatePhoneNumber() {
		AdminDetails details=new AdminDetails();
		details.setAdminemail("abhishek@gmail.com");
		details.setAdminmobile("9000220254");
		
		int a=dao.adminUpdatePhoneNumber(details);
		assert a>0:"admin mobile updating failed";
	}

	@Test
	public void testAdminUpdatePassword() {
		AdminDetails details=new AdminDetails();
		details.setAdminemail("abhishek@gmail.com");
		details.setAdminpassword("abhishek");
		
		int a=dao.adminUpdatePassword(details);
		assert a>0:"admin password updating failed";
	}


}
