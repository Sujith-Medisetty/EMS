package com.sal.controller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sal.dao.impl.UserDaoImpl;
import com.sal.entity.BookSlot;
import com.sal.entity.UserDetails;

public class UserApplyJobStatus extends HttpServlet {
	

private Logger logger = LogManager.getLogger(UserApplyJobStatus.class);
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		
		UserDaoImpl dao=new UserDaoImpl();
		
		if(dao.serachUserInBookSlot(details)>0) {
			response.getWriter().println("Applied");
		}else {
			response.getWriter().println("Not Applied");
		}
	}

}
