package com.company.dao;

import com.entity.User;

public interface UserDao {


	public boolean userRegister(User us);
	
	public User login(String email,String password);
	
	public boolean checkpassword(int id,String ps);

	public boolean updateProfile(User us);
}
