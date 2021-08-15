package com.sal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sal.dao.impl.AdminDaoImpl;
import com.sal.dto.AllUserDetails;

public class ViewAllUsers extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		AdminDaoImpl dao=new AdminDaoImpl();
		List<AllUserDetails> users= dao.getAllUsers();
		
		PrintWriter out=response.getWriter();
		
		//jackson api
		 String json =null;
			ObjectMapper objectMapper = new ObjectMapper();
		      try {
		        json= objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(users);
		         System.out.println(json);
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      
			out.println(json);
	}

}
