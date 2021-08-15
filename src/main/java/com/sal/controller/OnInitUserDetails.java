package com.sal.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sal.dao.impl.UserDaoImpl;
import com.sal.entity.UserDetails;

public class OnInitUserDetails extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String email=request.getParameter("useremail");
		System.out.println(email);
		PrintWriter out=response.getWriter();
		
		UserDetails details=new UserDetails();
		details.setUseremail(email);
		
		UserDaoImpl dao=new UserDaoImpl();
		
		UserDetails user=dao.ReturnUser(details);
		System.out.println(user);
		
		
		//jackson api
		 String json =null;
			ObjectMapper objectMapper = new ObjectMapper();
		      try {
		        json= objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(user);
		         System.out.println(json);
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      
			out.println(json);
		
	}

}
