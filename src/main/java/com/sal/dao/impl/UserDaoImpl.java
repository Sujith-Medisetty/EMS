package com.sal.dao.impl;

import java.util.ArrayList;

import javax.persistence.Query;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.sal.controller.UserLoginVerify;
import com.sal.dao.UserDao;
import com.sal.entity.BookSlot;
import com.sal.entity.UserDetails;

public class UserDaoImpl implements UserDao {

	private Logger logger = LogManager.getLogger(UserLoginVerify.class);
	
	private SessionFactory sf;
	
	public UserDaoImpl() {
		sf = new Configuration().configure().buildSessionFactory();
	}
	
	/*------------------------------------------------------------------------------------------*/
	
	@Override
	public int searchUserInUserDetails(UserDetails details) { // to search in UserDetails table
		
		int i=0;
		
		Session s=sf.openSession();

		Query q=s.createQuery("from UserDetails ud where ud.useremail= :email and ud.userpassword=:pass");
		q.setParameter("email",details.getUseremail());
		q.setParameter("pass", details.getUserpassword());
		ArrayList<UserDetails> ff=(ArrayList<UserDetails>) q.getResultList();
		
		
		if(ff.size()>0) {
			i=1;
		}
		
		return i;
	}

	/*------------------------------------------------------------------------------------------*/
	
	@Override
	public int serachUserInBookSlot(UserDetails details) { // to search in BookSlot table
		int i=0;
		
		Session s=sf.openSession();
		
		Query q=s.createQuery("from BookSlot bs where bs.email=:email");
		q.setParameter("email", details.getUseremail());
		ArrayList<UserDetails> ff=(ArrayList<UserDetails>)q.getResultList();
		
		if(ff.size()>0) {
			i=1;
		}
		return i;
	}

	/*------------------------------------------------------------------------------------------*/
	@Override
	public int insertUserInBookSlot(BookSlot slot) {  // to insert into BookSlot table
		int i=0;
		int j=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		j=(int) s.save(slot);
		System.out.println(slot);
		if(j>0) {
			i=1;
		}
		t.commit();
		s.close();
		
		return i;
	}
	
	
	@Override
	public UserDetails ReturnUser(UserDetails details) {
		
		Session s=sf.openSession();
		
		Query q=s.createQuery("from UserDetails ud where ud.useremail=:email");
		q.setParameter("email", details.getUseremail());
		
		UserDetails detail=(UserDetails) q.getSingleResult();
		
		System.out.println("in dao ...");
		System.out.println(detail.getUsername());
		
		
		return detail;
	}
	
	@Override
	public int RegisterUser(UserDetails details) {
		int i = 0;
		String str = null;

		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		str = (String) s.save(details);
		if (str != null) {
			i = 1;
		}
		t.commit();
		s.close();
		return i;
	}
	
	@Override
	public int userUpdatePhoneNumber(UserDetails details) {
		int i=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		Query q=s.createQuery("update UserDetails s set s.usermobile=:mobile where s.useremail=:email");
		q.setParameter("mobile", details.getUsermobile());
		q.setParameter("email", details.getUseremail());
		
		int val=q.executeUpdate();
		t.commit();
		s.close();
		if(val>0) {
			i=1;
		}
		return i;
	}

	@Override
	public int userUpdatePassword(UserDetails details) {
		int i=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		Query q=s.createQuery("update UserDetails s set s.userpassword=:password where s.useremail=:email");
		q.setParameter("password", details.getUserpassword());
		q.setParameter("email", details.getUseremail());
		
		int val=q.executeUpdate();
		t.commit();
		s.close();
		if(val>0) {
			i=1;
		}
		
		return 1;
	}

	@Override
	public int userApplyJob(BookSlot slot) {
		int i=0;
		int j=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		j=(int) s.save(slot);
		System.out.println(slot);
		if(j>0) {
			i=1;
		}
		t.commit();
		s.close();
		
		return i;
	}

}
