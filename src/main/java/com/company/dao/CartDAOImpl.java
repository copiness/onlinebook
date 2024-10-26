package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Cart;

public class CartDAOImpl implements CartDAO {

	private Connection conn;
	 
	public CartDAOImpl(Connection conn)
	{
		this.conn=conn;
	}
	
	
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			
			String sql="insert into cart(bid,uid,book_name,author,price,total_price) value(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getBid());
			ps.setInt(2, c.getUid());
			ps.setString(3, c.getBook_name());
			ps.setString(4, c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotalprice());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
