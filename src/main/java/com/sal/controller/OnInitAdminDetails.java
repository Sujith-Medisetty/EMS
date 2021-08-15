package com.sal.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sal.dao.impl.AdminDaoImpl;
import com.sal.entity.AdminDetails;
import com.sal.entity.UserDetails;

public class OnInitAdminDetails extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
		String email=request.getParameter("adminemail");
		System.out.println(email);
		PrintWriter out=response.getWriter();
		
		AdminDetails details=new AdminDetails();
		details.setAdminemail(email);
		
		AdminDaoImpl dao=new AdminDaoImpl();
		
		AdminDetails admin=dao.ReturnAdmin(details);
		System.out.println(admin);
		
		//jackson api
		 String json =null;
			ObjectMapper objectMapper = new ObjectMapper();
		      try {
		        json= objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(admin);
		         System.out.println(json);
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      
			out.println(json);
		
	}

}
