package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Book;
import service.book_service;

@Controller
public class book_controller {

	@Autowired//在容器中根据类型自动注入
	book_service bs;
	
	@RequestMapping("index")	
	public String select(String txt,ModelMap m) {
		if(txt==null||txt.equals(""))
			txt="";
		else txt="where book.name like '%"+txt+"%'";
		m.put("list", bs.select(txt));
		return "index";
	}

	
	@RequestMapping("add")
	public String  add(ModelMap m) {
		return "edit";
	}
	
	@RequestMapping("edit")
	public String  edit(int id,ModelMap m) {
		m.put("info", bs.selectByid(id));
		return add(m);
	}
	@RequestMapping("insert")	
	public String insert(Book b,ModelMap m) {
		bs.insert(b);
		return select(null,m);
	}
	@RequestMapping("update")	
	public String update(Book b,ModelMap m) {	
		bs.update(b);
		return select(null,m);
	}
	@RequestMapping("delete")	
	public String delete(int id,ModelMap m) {
		bs.delete(id);
		return select(null,m);
	}
	
}
