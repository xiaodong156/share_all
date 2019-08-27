package service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.book_dao;
import model.Book;
import service.book_service;
@Service
public class book_service_impl implements book_service{
	@Autowired
    book_dao td;
	public List<Book> select(String txt) {		
		return td.select(txt);
	}
	public Book selectByid(int id) {
		return td.selectByid(id);
	}
	public void insert(Book t) {
		td.insert(t);	
	}
	public void update(Book t) {
		td.update(t);		
	}
	public void delete(int id) {		
		td.delete(id);
	}
	
}
