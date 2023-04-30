package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookOrderDAO;
import com.DAO.CartDaoImpl;
import com.DAO.OrderBookImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Book_Oder;
import com.entity.Cart;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("username");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String address= req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentType = req.getParameter("payment");
		
			String fullAdd = address +", "+landmark+", "+city+", "+state+", "+pincode;
			
//			System.out.println(name+" "+email+" "+phne+" "+fullAdd + " " + paymentType);
			CartDaoImpl dao = new CartDaoImpl(DBConnect.getCon());
			List<Cart> blist=dao.getBookByUser(id);
			
			if(blist.isEmpty()) {
				session.setAttribute("failedMsg", "Add Item");
				resp.sendRedirect("checkout.jsp");
			}
			else {
				OrderBookImpl dao2= new OrderBookImpl(DBConnect.getCon());
				Book_Oder o = null;
				ArrayList<Book_Oder> order_list = new ArrayList<Book_Oder>();
				
				Random r = new Random();
				
				for(Cart c: blist) {
					o = new Book_Oder();
					o.setOrderId("BOOK-ORD-00"+r.nextInt(1000));
					o.setUsername(name);
					o.setEmail(email);
					o.setPhno(phno);
					o.setFulladd(fullAdd);
					o.setBookName(c.getBookName());
					o.setAuthor(c.getAuthor());
					o.setPrice(c.getPrice()+"");
					o.setPaymentType(paymentType);
					order_list.add(o);
				}
				
				if("noselect".equals(paymentType)) {
					session.setAttribute("failedMsg", "Choose Payment Method");
					resp.sendRedirect("checkout.jsp");
				}
				else {
					boolean f=dao2.saveOrder(order_list);
					if(f) {
						resp.sendRedirect("order_success.jsp");
						
					}else {
						session.setAttribute("failedMsg", "Your Order Failed");
						resp.sendRedirect("checkout.jsp");
					}
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
