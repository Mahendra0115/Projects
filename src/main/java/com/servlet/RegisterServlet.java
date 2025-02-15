package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entites.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User(name, email, password);

		// Get Connection from DbConnect
		Connection conn = DbConnect.getConnection();
		if (conn == null) {
			response.getWriter().println("Error: Database Connection is NULL!");
			return;
		}

		UserDao userDao = new UserDao(conn);
		boolean f = userDao.userRegister(user);

		PrintWriter out = response.getWriter();
		if (f) {
			out.print(" User Registered Successfully!");
		} else {
			out.print(" Error: Registration Failed!");
		}

//		Register Alert Part start

		if (true) {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Register Successfully ");
			response.sendRedirect("register.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Something went Wrong Server");
			response.sendRedirect("register.jsp");
		}

//		Register Alert Part End
	}
}
