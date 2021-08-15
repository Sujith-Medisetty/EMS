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

public class UserUpdatePassword extends HttpServlet {

private Logger logger = LogManager.getLogger(UserUpdatePassword.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password=request.getParameter("password");
		String email=request.getParameter("email");

		System.out.println("got it "+password);
		
		HttpSession session=request.getSession();
		System.out.println(session.getAttribute("useremail"));
		
		response.setContentType("text/plain");
	    // response.setCharacterEncoding("UTF-8"); 
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		details.setUserpassword(password);
		
		UserDaoImpl dao=new UserDaoImpl();
		if(dao.userUpdatePassword(details)>0) {
			logger.info("User Password Updated Successfully....!");
			response.getWriter().println("Update Success");
		}else {
			logger.info("User Password Updating Failed ....!");
			response.getWriter().println("Update Failed");
		}
		
	}

}
