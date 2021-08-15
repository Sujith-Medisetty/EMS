package com.sal.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.sal.dao.AdminDao;
import com.sal.dto.AllUserDetails;
import com.sal.entity.AdminDetails;
import com.sal.entity.UserDetails;

public class AdminDaoImpl implements AdminDao {

	private SessionFactory sf;
	
	public AdminDaoImpl() {
		sf = new Configuration().configure().buildSessionFactory();
	}
	
	@Override
	public int searchAdminInAdminDetails(AdminDetails details) {
		int i=0;
		
		Session s=sf.openSession();

		Query q=s.createQuery("from AdminDetails ud where ud.adminemail= :email and ud.adminpassword=:pass");
		q.setParameter("email",details.getAdminemail());
		q.setParameter("pass", details.getAdminpassword());
		ArrayList<UserDetails> ff=(ArrayList<UserDetails>) q.getResultList();
		
		
		if(ff.size()>0) {
			i=1;
		}
		
		return i;
	}
	
	@Override
	public AdminDetails ReturnAdmin(AdminDetails details) {
		
		Session s=sf.openSession();
		
		Query q=s.createQuery("from AdminDetails ud where ud.adminemail=:email");
		q.setParameter("email", details.getAdminemail());
		
		AdminDetails detail=(AdminDetails) q.getSingleResult();
		
		System.out.println("in dao ...");
		System.out.println(detail.getAdminname());
		
		
		return detail;
	}
	
	@Override
	public int adminUpdatePhoneNumber(AdminDetails details) {
		int i=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		Query q=s.createQuery("update AdminDetails s set s.adminmobile=:mobile where s.adminemail=:email");
		q.setParameter("mobile", details.getAdminmobile());
		q.setParameter("email", details.getAdminemail());
		
		int val=q.executeUpdate();
		t.commit();
		s.close();
		if(val>0) {
			i=1;
		}
		return i;
	}
	
	@Override
	public int adminUpdatePassword(AdminDetails details) {
		int i=0;
		
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		Query q=s.createQuery("update AdminDetails s set s.adminpassword=:password where s.adminemail=:email");
		q.setParameter("password", details.getAdminpassword());
		q.setParameter("email", details.getAdminemail());
		
		int val=q.executeUpdate();
		t.commit();
		s.close();
		if(val>0) {
			i=1;
		}
		
		return 1;
	}
	
	@Override
	public List<AllUserDetails> getAllUsers(){
		
		Session s=sf.openSession();
		Query q=s.createQuery("select u.username, u.useremail, u.usermobile, u.userpassword, (case when s.email is null then 'Not Applied' else 'Applied' end) as status from BookSlot s right join UserDetails u on s.email=u.useremail ");
		return q.getResultList();
		
	}

}
