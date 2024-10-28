package com.company.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.dao.BookDaoImpl;
import com.company.dao.CartDAOImpl;
import com.company.util.DBUtil;
import com.entity.BookDtls;
import com.entity.Cart;
import com.mysql.cj.jdbc.JdbcConnection;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		
		try {
			int bid=Integer.parseInt(req.getParameter("bid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			 
			BookDaoImpl dao=new BookDaoImpl(DBUtil.getConn());
			BookDtls b=dao.getBookById(bid);
			
			Cart c=new Cart();
			c.setBid(bid);
			c.setUid(uid);
			c.setBook_name(b.getBookName());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalprice(Double.parseDouble(b.getPrice()));
			
			
			CartDAOImpl dao2=new CartDAOImpl(DBUtil.getConn());
			boolean f=dao2.addCart(c);
			
			HttpSession session=req.getSession();
			
			if(f)
			{
				session.setAttribute("addCart","Book Added to cart");
				resp.sendRedirect("all_new_book.jsp");
				
				
			}else {
				session.setAttribute("failed","something wrong on server");
				resp.sendRedirect("all_new_book.jsp");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	
	
	
}
