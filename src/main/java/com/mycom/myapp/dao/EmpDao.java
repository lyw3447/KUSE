package com.mycom.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mycom.myapp.bean.Emp;

public class EmpDao {
 
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public Emp getEmpById(int id) {
		String sql = "select * from db_content where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
	}
	
	//rank_contents 가 view 이름!
		public List<Emp> searchList(String keyword, int count) {
			String sql = "call limit_num(?, ?)";
			Object [] params = {count,"%"+keyword+"%"};
				return template.query(sql, params, new RowMapper<Emp>(){
					public Emp mapRow(ResultSet rs, int row) throws SQLException {
						Emp e = new Emp();
						e.setId(rs.getInt(1));
						e.setTitle(rs.getString(2));
						e.setBody(rs.getString(3));
						e.setWriter(rs.getString(4));
						e.setfileURL(rs.getString(5));
						return e;
					}
				});
				}
	
//	public int getCount(String keyword) {
//		String sql = "select count(distinct(a.C1)) from db_content as a,`rank` as b where a.C1=("
//				+ "select b.C3 WHERE b.C2 like ?"
//				+ ")";
//		Object [] params = {"%"+keyword+"%"};
//		return this.template.queryForInt(sql, params);
//	}
	
	public List<Emp> getList() {
		return template.query("select * from db_content", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {
				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setTitle(rs.getString(2));
				e.setBody(rs.getString(3));
				e.setWriter(rs.getString(4));
				e.setfileURL(rs.getString(5));
				return e;
			}
		});
	}

}