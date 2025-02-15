package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entites.User;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDao dao = new UserDao(DbConnect.getConnection());
		User user = dao.userLogin(email, password);

		HttpSession session = request.getSession();

		if (user != null) { 
//			System.out.println("Login successful");
			session.setAttribute("user-ob", user);
			response.sendRedirect("home.jsp");
		} else {
//			System.out.println("Login failed");
			session.setAttribute("error-msg", "Invalid Email or Password");
			response.sendRedirect("login.jsp");
		}
	}
}

