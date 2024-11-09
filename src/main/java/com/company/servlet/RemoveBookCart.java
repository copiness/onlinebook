package com.company.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.dao.CartDAOImpl;
import com.company.util.DBUtil;
import com.entity.Cart;
import com.mysql.cj.xdevapi.Session;

@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));

		
		CartDAOImpl dao=new CartDAOImpl(DBUtil.getConn());
		boolean f=dao.deleteBook(bid,uid);
		HttpSession sassion=req.getSession();
		
		
		if(f) {
			sassion.setAttribute("succMsg", "Book removed from Cart");
		    resp.sendRedirect("cart.jsp");
		} else {
			sassion.setAttribute("faileMsg", "Something worng on server");
		    resp.sendRedirect("cart.jsp");
		}

	}
	
	

}
