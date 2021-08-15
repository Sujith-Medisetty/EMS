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

public class AdminUpdatePhoneNumber extends HttpServlet {
	private Logger logger = LogManager.getLogger(AdminUpdatePhoneNumber.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number=request.getParameter("number");
		String email=request.getParameter("email");

		System.out.println("got it "+number);
		
		HttpSession session=request.getSession();
		
		response.setContentType("text/plain");
	    // response.setCharacterEncoding("UTF-8"); 
		
		AdminDetails details=new AdminDetails();
		details.setAdminemail(email);
		details.setAdminmobile(number);
		
		AdminDaoImpl dao=new AdminDaoImpl();
		if(dao.adminUpdatePhoneNumber(details)>0) {
			logger.info("Admin Phone Number Updated Successfully....!");
			response.getWriter().println("Update Success");
		}else {
			logger.info("Admin Phone Number Updating Failed....!");
			response.getWriter().println("Update Failed");
		}
	}

}
