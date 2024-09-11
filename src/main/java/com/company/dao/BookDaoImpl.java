package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.BookDtls;

public class BookDaoImpl implements BookDao{
	
	private  Connection conn;
	
	public BookDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}



	public boolean addBooks(BookDtls b) {
		boolean f=false;
		try {
			String sql = "INSERT INTO book_dtls (bookname, author, price, bookcategory, status, photo, user_email) VALUES (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
