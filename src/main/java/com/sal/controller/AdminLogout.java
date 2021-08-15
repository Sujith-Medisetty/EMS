package com.sal.controller;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogout extends HttpServlet {
private Logger logger = LogManager.getLogger(AdminLogout.class);
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.info("Admin Logged Ot Successfully....!");
		HttpSession session=request.getSession();
		session.invalidate();
		response.sendRedirect("Login.jsp");
		
	}

}
