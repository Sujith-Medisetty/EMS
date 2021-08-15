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

public class UserApplyJob extends HttpServlet {
	
	private Logger logger = LogManager.getLogger(UserApplyJob.class);
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		
		BookSlot slot=new BookSlot();
		slot.setEmail(email);
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		
		UserDaoImpl dao=new UserDaoImpl();
		
		if(dao.serachUserInBookSlot(details)>0) {
			logger.info("User Already Applied....!");
			response.getWriter().println("User already applied");
		}else {
		
			if(dao.userApplyJob(slot)>0) {
				logger.info("User Applied Successfully....!");
				response.getWriter().println("Applied Successfully");
			}else {
				logger.info("some server issues at server side...!");
				response.getWriter().println("sorry, Some server issue");
			}
			
		}
		
	}

}
