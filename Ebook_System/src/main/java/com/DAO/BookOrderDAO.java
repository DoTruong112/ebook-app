package com.DAO;

import java.util.List;

import com.entity.Book_Oder;

public interface BookOrderDAO {

	
	public boolean saveOrder(List<Book_Oder> blist);
	
	public List<Book_Oder> getBook(String email);
	
	public List<Book_Oder> getAllOrderBook();
}
