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

public class AdminUpdatePassword extends HttpServlet {
private Logger logger = LogManager.getLogger(AdminUpdatePassword.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password=request.getParameter("password");
		String email=request.getParameter("email");

		System.out.println("got it "+password);
		
		HttpSession session=request.getSession();
		System.out.println(session.getAttribute("useremail"));
		
		response.setContentType("text/plain");
	    // response.setCharacterEncoding("UTF-8"); 
		
		AdminDetails details=new AdminDetails();
		details.setAdminemail(email);
		details.setAdminpassword(password);
		
		AdminDaoImpl dao=new AdminDaoImpl();
		if(dao.adminUpdatePassword(details)>0) {
			logger.info("Admin Password Updated Successfully....!");
			response.getWriter().println("Update Success");
		}else {
			logger.info("Admin Password Updating Failed....!");
			response.getWriter().println("Update Failed");
		}
	}

}
