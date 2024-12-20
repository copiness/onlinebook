package com.company.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;
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
	


	@Override
	public List<Cart> getBoookByuser(int userId) {
		List<Cart> list=new ArrayList<Cart>();
		Cart c=null;
		double totalprice=0;
		
		
		try {
			
			String sql = "select * from cart where uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next());
			{
				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setBid(rs.getInt(2));
				c.setUid(rs.getInt(3));
				c.setBook_name(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				
				totalprice=totalprice+rs.getDouble(7);
				c.setTotalprice(totalprice);
				
				list.add(c);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return (List<Cart>) c;
	}


	@Override
	public boolean deleteBook(int bid,int uid) {
		
		boolean f = false;
		
		try {
			String sql="delete from cart where bid=? and uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setInt(2, uid);

			int i=ps.executeUpdate();
			
			
			if(i==1) {
				f = true;
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return f;    
		
	}
	
	

}
