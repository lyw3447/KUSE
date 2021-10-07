package com.mycom.myapp;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycom.myapp.dao.EmpDao;
import com.mycom.myapp.bean.Emp;

@Controller
public class EmpController {
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);
	@Autowired
	EmpDao dao; //will inject dao from XML file
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model m) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		m.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	@RequestMapping(value="/list")
	public String viewemp(Model m) {
		List<Emp> list=dao.getList();
		m.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping("/detail/{id}")
	public String edit(@PathVariable int id, Model m) {
		Emp emp = dao.getEmpById(id);
		m.addAttribute("command", emp);
		return "detail";
	}
	
	@RequestMapping(value="/search")
	public String search(String keyword, int count, Model m) {
		List<Emp> list = dao.searchList(keyword, count);
		m.addAttribute("list", list);
		m.addAttribute("keyword", keyword);
		m.addAttribute("count",count);
		//검색어 저장필요!! 
		return "list"; 
	}
}
