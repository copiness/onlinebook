package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.User;

public class UserDaoImpl implements UserDao {
	
	private Connection conn;

	public UserDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User us) {
		
		boolean f = false;
		
		try {
			// Corrected SQL query with appropriate placeholders for the parameters
			String sql = "INSERT INTO user(name, email, phno, password) VALUES(?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);

			// Corrected parameter indexes
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			
			// Execute update and check if it was successful
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		// Return the result of the operation
		return f;
	}
}
