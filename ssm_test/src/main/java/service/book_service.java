package service;

import java.util.List;


import model.Book;

public interface book_service {
	public List<Book> select(String txt);
	
	public Book selectByid(int id);
	public void insert(Book b);
	public void update(Book b);
	public void delete(int id);
}
