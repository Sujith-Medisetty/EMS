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

public class UserLoginVerify extends HttpServlet {
	
	private Logger logger = LogManager.getLogger(UserLoginVerify.class);
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email=request.getParameter("useremail");
		String pass=request.getParameter("userpassword");
		System.out.println(email);
		System.out.println(pass);
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		details.setUserpassword(pass);
		
		HttpSession session=request.getSession();
		
		UserDaoImpl dao=new UserDaoImpl();
		
		if(dao.searchUserInUserDetails(details)>0) {
			
			logger.info("User Login Success...!");
			
			UserDetails user=dao.ReturnUser(details);
			session.setAttribute("user", user);
			
			session.setAttribute("flag", 0);
			session.setAttribute("useremail", email);
			
			response.sendRedirect("UserLogin.jsp");
		}else {
			
			logger.info("User Login Failed...!");
			
			session.setAttribute("flag", 1);
			
			 response.sendRedirect("Login.jsp");
		}
		
	}

}
