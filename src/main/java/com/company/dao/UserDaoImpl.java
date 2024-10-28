package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDaoImpl implements UserDao {
	
	public boolean checkpassword(String ps) {
		
		return false;
	}


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


	public User login(String email, String password) {
		User us = null;

		
		try {
			String sql = "select * from user where email=? and password=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us = new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAdress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
				
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return us;
		
	}
	
}
