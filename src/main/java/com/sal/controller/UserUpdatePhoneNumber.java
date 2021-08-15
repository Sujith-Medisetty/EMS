package com.sal.controller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sal.dao.impl.UserDaoImpl;
import com.sal.entity.UserDetails;

public class UserUpdatePhoneNumber extends HttpServlet {
	private Logger logger = LogManager.getLogger(UserUpdatePhoneNumber.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number=request.getParameter("number");
		String email=request.getParameter("email");

		System.out.println("got it "+number);
		
		HttpSession session=request.getSession();
		
		response.setContentType("text/plain");
	    // response.setCharacterEncoding("UTF-8"); 
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		details.setUsermobile(number);
		
		UserDaoImpl dao=new UserDaoImpl();
		if(dao.userUpdatePhoneNumber(details)>0) {
			logger.info("User Phone Number Updated Successfully....!");
			response.getWriter().println("Update Success");
		}else {
			logger.info("User Phone Number Updating Failed....!");
			response.getWriter().println("Update Failed");
		}
	}

}
