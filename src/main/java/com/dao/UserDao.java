package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.entites.User;

public class UserDao {
	private Connection conn;

	// Constructor to Initialize Connection
	public UserDao(Connection conn) {
		this.conn = conn;
	}

	// Method to Register User
	public boolean userRegister(User user) {
		boolean status = false;
		try {
			// Ensure Connection is NOT NULL
			if (conn == null) {
				throw new SQLException("Error: Database Connection is NULL!");
			}

			String query = "INSERT INTO users(name, email, password) VALUES(?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());

			int i = ps.executeUpdate();
			if (i > 0) {
				status = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

	public User userLogin(String em, String ps) {
		User user = null;
		try {
			String sql = "SELECT * FROM users WHERE email=? AND password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, em); // Corrected variables
			pst.setString(2, ps);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				user = new User(rs.getString("name"), rs.getString("email"), rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

}
