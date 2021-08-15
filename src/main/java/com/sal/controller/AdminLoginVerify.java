package com.sal.controller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sal.dao.impl.AdminDaoImpl;
import com.sal.entity.AdminDetails;

public class AdminLoginVerify extends HttpServlet {
	private Logger logger = LogManager.getLogger(AdminLoginVerify.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("adminemail");
		String pass=request.getParameter("adminpassword");
		System.out.println(email);
		System.out.println(pass);
		
		AdminDetails details=new AdminDetails();
		details.setAdminemail(email);
		details.setAdminpassword(pass);
		
		HttpSession session=request.getSession();
		
		AdminDaoImpl dao=new AdminDaoImpl();
		
		if(dao.searchAdminInAdminDetails(details)>0) {
			
			logger.info("Admin Logged in Successfully....!");
			
			session.setAttribute("adminflag", 0);
			session.setAttribute("adminemail", email);
			
			response.sendRedirect("AdminLogin.jsp");
		}else {
			
			logger.info("Admin logging failed");
			
			session.setAttribute("adminflag", 1);
			
			 response.sendRedirect("Login.jsp");
		}
	}

}
