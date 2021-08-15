package com.sal.controller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sal.dao.impl.UserDaoImpl;
import com.sal.entity.UserDetails;

public class RegisterServlet extends HttpServlet {

private Logger logger = LogManager.getLogger(RegisterServlet.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("userpassword");
		String usermobile = request.getParameter("usermobile");
		String username = request.getParameter("username");

		System.out.println("UserName is " + username);
		System.out.println("UserEmail is " + useremail);
		System.out.println("Password is " + userpassword);
		System.out.println("mobile is " + usermobile);
		
		UserDetails details=new UserDetails();
		details.setUseremail(useremail);
		details.setUsermobile(usermobile);
		details.setUsername(username);
		details.setUserpassword(userpassword);
		
		UserDaoImpl dao=new UserDaoImpl();
		int i=dao.RegisterUser(details);
		if(i>0) {
			logger.info("User Registration Success....!");
			System.out.println("Registration Success");
			response.getWriter().println("Registration Success");
		}else {
			logger.info("User Registration Failed...!");
			System.out.println("Registration Failed");
			response.getWriter().println("Registration Failed");
		}
	}

}
