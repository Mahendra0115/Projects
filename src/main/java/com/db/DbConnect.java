package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	private static Connection conn = null;

	// Static block to initialize connection
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL Driver
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "1234");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return conn;
	}
}
