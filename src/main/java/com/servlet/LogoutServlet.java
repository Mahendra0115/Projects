package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     HttpSession session = request.getSession();
	    
	     session.removeAttribute("user-ob");
	     
	     HttpSession session2 = request.getSession();
	     session2.setAttribute("logout-msg","logout sucussfully   Pease login Again");
	     response.sendRedirect("register.jsp");
	}

}
